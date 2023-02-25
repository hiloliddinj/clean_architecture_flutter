import 'dart:io';
import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_editor/image_editor.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:path_provider/path_provider.dart';

Future<File?> cropImageDataWithNativeLibrary(
    {required ExtendedImageEditorState state}) async {
  Rect cropRect = state.getCropRect()!;
  if (state.widget.extendedImageState.imageProvider is ExtendedResizeImage) {
    final ImmutableBuffer buffer =
        await ImmutableBuffer.fromUint8List(state.rawImageData);
    final ImageDescriptor descriptor = await ImageDescriptor.encoded(buffer);

    final double widthRatio = descriptor.width / state.image!.width;
    final double heightRatio = descriptor.height / state.image!.height;
    cropRect = Rect.fromLTRB(
      cropRect.left * widthRatio,
      cropRect.top * heightRatio,
      cropRect.right * widthRatio,
      cropRect.bottom * heightRatio,
    );
  }

  final EditActionDetails action = state.editAction!;

  final int rotateAngle = action.rotateAngle.toInt();
  final bool flipHorizontal = action.flipY;
  final bool flipVertical = action.flipX;
  final Uint8List img = state.rawImageData;

  final ImageEditorOption option = ImageEditorOption();

  if (action.needCrop) {
    option.addOption(ClipOption.fromRect(cropRect));
  }

  if (action.needFlip) {
    option.addOption(FlipOption(
      horizontal: flipHorizontal,
      vertical: flipVertical,
    ));
  }

  final Uint8List? result = await ImageEditor.editImage(
    image: img,
    imageEditorOption: option,
  );

  final tempDir = await getTemporaryDirectory();

  File file = File('${tempDir.path}/image.jpeg');
  File fileNew = File('${tempDir.path}/avatarNew.jpeg');

  file.writeAsBytesSync(result!);

  var result1 = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    fileNew.absolute.path,
    format: CompressFormat.jpeg,
    quality: 80,
    rotate: rotateAngle,
  );

  debugPrint(file.lengthSync().toString());
  debugPrint(result1!.lengthSync().toString());

  return result1;
}

class CustomEditorCropLayerPainter extends EditorCropLayerPainter {
  const CustomEditorCropLayerPainter();

  @override
  void paint(Canvas canvas, Size size, ExtendedImageCropLayerPainter painter) {
    paintMask(canvas, size, painter);
    paintLines(canvas, size, painter);
    paintCorners(canvas, size, painter);
  }

  @override
  void paintCorners(
      Canvas canvas, Size size, ExtendedImageCropLayerPainter painter) {
    final Rect cropRect = painter.cropRect;
    final Paint paint = Paint()
      ..color = painter.cornerColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;

    Path path;
    path = dashPath(
      Path()
        ..moveTo(cropRect.left, cropRect.top)
        ..lineTo(cropRect.right, cropRect.top)
        ..lineTo(cropRect.right, cropRect.bottom)
        ..lineTo(cropRect.left, cropRect.bottom)
        ..lineTo(cropRect.left, cropRect.top),
      dashArray: CircularIntervalList([12, 8]),
    );

    canvas.drawPath(path, paint);
  }
}
