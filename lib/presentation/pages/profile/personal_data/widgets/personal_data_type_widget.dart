import 'package:flutter/material.dart';

import 'personal_data_item_widget.dart';
import 'title_personal_data_widget.dart';

class PersonalDataTypeWidget extends StatelessWidget {
  final String personalDataName;
  final VoidCallback onTab;
  final List<PersonalDataItemWidget> listData;

  const PersonalDataTypeWidget({
    required this.personalDataName,
    required this.onTab,
    required this.listData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitlePersonalDataWidget(
          text: personalDataName,
          onTap: onTab,
        ),
        const SizedBox(
          height: 20,
        ),
        ...listData,
      ],
    );
  }
}
