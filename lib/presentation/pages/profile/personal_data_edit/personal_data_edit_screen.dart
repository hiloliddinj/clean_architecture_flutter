import 'package:auto_route/auto_route.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giftbow_mobile/core/extensions.dart';
import 'package:giftbow_mobile/core/service_locator.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../general_widgets/appbar/gb_appbar.dart';
import '../../../general_widgets/buttons/gb_text_button.dart';
import '../../../general_widgets/overlay_alert/gb_overlay_alert.dart';
import '../../../general_widgets/text_field/dropdown_text_field/gb_dropdown_text_field.dart';
import '../../../general_widgets/text_field/gb_text_field.dart';
import '../profile/bloc/profile_bloc.dart';
import 'cubit/personal_data_edit_cubit.dart';

class PersonalDataEditScreen extends StatefulWidget {
  const PersonalDataEditScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalDataEditScreen> createState() => _PersonalDataEditScreenState();
}

class _PersonalDataEditScreenState extends State<PersonalDataEditScreen> {
  final ProfileBloc profileBloc = locator<ProfileBloc>();

  final FocusNode nameFocus = FocusNode();
  final TextEditingController nameController = TextEditingController();

  final FocusNode lastnameFocus = FocusNode();
  final TextEditingController lastnameController = TextEditingController();

  final FocusNode birthdayFocus = FocusNode();
  final TextEditingController birthdayController = TextEditingController();

  final FocusNode genderFocus = FocusNode();
  final SingleValueDropDownController genderController =
      SingleValueDropDownController();

  late DateTime _selectedDate;
  final DateFormat dateFormat = DateFormat.yMMMMd('ru');

  final PersonalDataEditCubit personalDataEditCubit =
      locator<PersonalDataEditCubit>();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.parse(
      profileBloc.state.profile!.birthday.substring(
        0,
        10,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    nameController.text = profileBloc.state.profile!.name;
    lastnameController.text = profileBloc.state.profile!.surname;
    birthdayController.text = dateFormat.format(
      DateTime.parse(
        profileBloc.state.profile!.birthday.substring(
          0,
          10,
        ),
      ),
    );
    genderController.setDropDown(
      DropDownValueModel(
        name: profileBloc.state.profile!.gender == Gender.MALE
            ? context.local.male
            : context.local.female,
        value: profileBloc.state.profile!.gender,
      ),
    );
  }

  bool get isChangePersonalData {
    return (nameController.text.isNotEmpty &&
            lastnameController.text.isNotEmpty) &&
        (nameController.text != profileBloc.state.profile!.name ||
            lastnameController.text != profileBloc.state.profile!.surname ||
            birthdayController.text !=
                dateFormat.format(
                  DateTime.parse(
                    profileBloc.state.profile!.birthday.substring(
                      0,
                      10,
                    ),
                  ),
                ) ||
            genderController.dropDownValue!.value !=
                profileBloc.state.profile!.gender);
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
        isBack: true,
        actions: [
          isChangePersonalData
              ? GbTextButton(
                  onPressed: () {
                    context.showOverlayLoad;
                    personalDataEditCubit.updatePersonalData(
                      name: nameController.text,
                      surname: lastnameController.text,
                      birthday: DateFormat('yyyy-MM-dd').format(_selectedDate),
                      gender: genderController.dropDownValue!.value,
                    );
                  },
                  text: context.local.done,
                  textStyle: context.text.textButtonAppBar,
                )
              : const SizedBox(),
        ],
      ),
      body: BlocConsumer<PersonalDataEditCubit, PersonalDataEditState>(
        bloc: personalDataEditCubit,
        listener: (context, state) {
          state.when(
            personalInfo: (
              status,
              profile,
              error,
            ) {
              if (status == UpdatePersonalInfoStatus.success) {
                context.hideOverlayLoad;
                profileBloc.add(
                  ProfileEvent.updateProfileAllInfo(
                    profile: profile!,
                  ),
                );
                showOverlayNotification(
                  (context) => GbOverlayAlert(
                    text: context.local.your_data_success_updated,
                  ),
                );
                AutoRouter.of(context).pop();
              }
              if (status == UpdatePersonalInfoStatus.error && error != null) {
                context.hideOverlayLoad;
                showOverlayNotification(
                  (context) => GbOverlayAlert(
                    text: error,
                    isError: true,
                  ),
                );
                AutoRouter.of(context).pop();
              }
            },
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.local.personal_data,
                  style: context.text.title,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  context.local.edit_profile_subtitle,
                  style: context.text.appDescription,
                ),
                const SizedBox(
                  height: 32,
                ),
                Wrap(
                  runSpacing: 20,
                  children: [
                    GbTextField(
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
                                        setState(
                                          () {
                                            birthdayController.text = dateFormat
                                                .format(_selectedDate);
                                          },
                                        );
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
                                        setState(
                                          () {
                                            _selectedDate = value;
                                          },
                                        );
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
                          label: context.local.birthday,
                          focusNode: birthdayFocus,
                          controller: birthdayController,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return context.local.field_cannot_be_empty;
                            }
                            return null;
                          },
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
          );
        },
      ),
    );
  }
}
