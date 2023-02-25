import 'package:auto_route/auto_route.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../core/extensions.dart';
import '../../../../const/styles/styles.dart';
import '../../../../core/service_locator.dart';
import '../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_bottom_button.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../general_widgets/text_field/dropdown_text_field'
    '/gb_dropdown_text_field.dart';
import '../../../general_widgets/text_field/gb_text_field.dart';
import '../../../navigation/router.dart';
import '../../profile/profile/bloc/profile_bloc.dart';
import 'cubit/personal_data_create_cubit.dart';

class PersonalDataCreateScreen extends StatefulWidget {
  const PersonalDataCreateScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalDataCreateScreen> createState() =>
      _PersonalDataCreateScreenState();
}

class _PersonalDataCreateScreenState extends State<PersonalDataCreateScreen> {
  final FocusNode nameFocus = FocusNode();
  final TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> nameValidationKey = GlobalKey<FormState>();

  final FocusNode lastnameFocus = FocusNode();
  final TextEditingController lastnameController = TextEditingController();
  final GlobalKey<FormState> lastNameValidationKey = GlobalKey<FormState>();

  final FocusNode birthdayFocus = FocusNode();
  final TextEditingController birthdayController = TextEditingController();
  final GlobalKey<FormState> birthdayValidationKey = GlobalKey<FormState>();

  final FocusNode genderFocus = FocusNode();
  final SingleValueDropDownController genderController =
      SingleValueDropDownController();

  late DateTime _selectedDate;
  final DateFormat dateFormat = DateFormat.yMMMMd('ru');

  final PersonalDataCreateCubit personalDataCreateCubit =
      locator<PersonalDataCreateCubit>();
  final ProfileBloc profileBloc = locator<ProfileBloc>();

  @override
  void initState() {
    _selectedDate = DateTime.now();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    genderController.setDropDown(
      DropDownValueModel(
        name: context.local.male,
        value: Gender.MALE,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    nameFocus.dispose();
    lastnameController.dispose();
    lastnameFocus.dispose();
    birthdayController.dispose();
    birthdayFocus.dispose();
    genderController.dispose();
    genderFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GbAppBar(
        leading: SvgPicture.asset(
          Assets.imagesHandV,
          fit: BoxFit.none,
        ),
      ),
      body: BlocConsumer<PersonalDataCreateCubit, PersonalDataCreateState>(
        bloc: personalDataCreateCubit,
        listener: (context, state) {
          state.when(
            personalInfo: (
              status,
              profile,
              error,
            ) {
              if (status == PersonalDataCreateStatus.success) {
                context.hideOverlayLoad;
                profileBloc.add(
                  ProfileEvent.updateProfileAllInfo(
                    profile: profile!,
                  ),
                );
                AutoRouter.of(context).replaceAll(
                  [
                    const ContactsAccessScreenRoute(),
                  ],
                );
              } else if (status == PersonalDataCreateStatus.error &&
                  error != null) {
                context.hideOverlayLoad;
                showOverlayNotification(
                  (context) => GbOverlayAlert(
                    text: error,
                    isError: true,
                  ),
                );
              }
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: kPaddingScreen,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.local.tell_about_yourself,
                      style: context.text.title,
                    ),
                    kSizedBoxVer32,
                    Text(
                      context.local.tell_about_yourself_subtitle,
                      style: context.text.appDescription,
                    ),
                    kSizedBoxVer32,
                    Wrap(
                      runSpacing: 20,
                      children: [
                        GbTextField(
                          validationKey: nameValidationKey,
                          label: context.local.name,
                          focusNode: nameFocus,
                          controller: nameController,
                          onChanged: (val) {
                            setState(() {});
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return context.local.field_cannot_be_empty;
                            }
                            return null;
                          },
                        ),
                        GbTextField(
                          validationKey: lastNameValidationKey,
                          label: context.local.last_name,
                          focusNode: lastnameFocus,
                          controller: lastnameController,
                          onChanged: (val) {
                            setState(() {});
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return context.local.field_cannot_be_empty;
                            }
                            return null;
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                              builder: (context) {
                                return SafeArea(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: GbTextButton(
                                          onPressed: () {
                                            setState(() {
                                              birthdayController.text =
                                                  dateFormat
                                                      .format(_selectedDate);
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          text: context.local.choose,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 240,
                                        child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.date,
                                          initialDateTime: _selectedDate,
                                          onDateTimeChanged: (DateTime value) {
                                            setState(() {
                                              _selectedDate = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: AbsorbPointer(
                            absorbing: true,
                            child: GbTextField(
                              validationKey: birthdayValidationKey,
                              label: context.local.birthday,
                              focusNode: birthdayFocus,
                              controller: birthdayController,
                            ),
                          ),
                        ),
                        GbDropdownTextField(
                          controller: genderController,
                          label: context.local.gender,
                          focusNode: genderFocus,
                          listValue: [
                            DropDownValueModel(
                              name: context.local.male,
                              value: Gender.MALE,
                            ),
                            DropDownValueModel(
                              name: context.local.female,
                              value: Gender.FEMALE,
                            ),
                          ],
                          onChanged: (val) {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GbBottomButton(
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      lastnameController.text.isEmpty ||
                      birthdayController.text.isEmpty) {
                    nameValidationKey.currentState!.validate();
                    lastNameValidationKey.currentState!.validate();
                    birthdayValidationKey.currentState!.validate();
                    return;
                  }

                  context.showOverlayLoad;
                  personalDataCreateCubit.createPersonalData(
                    name: nameController.text,
                    surname: lastnameController.text,
                    birthday: DateFormat('yyyy-MM-dd').format(_selectedDate),
                    gender: genderController.dropDownValue!.value,
                  );
                },
                text: context.local.next,
                isDisable: false,
              ),
            ],
          );
        },
      ),
    );
  }
}
