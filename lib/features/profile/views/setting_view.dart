import 'package:e_commerce_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../auth/presentation/widgets/custom_text_form_field.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  TextEditingController name = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController repeatNewPassword = TextEditingController();

  List<String> ntfSetting = ["Sales", "New arrivals" , "Delivery status changes"];
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 25,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Settings",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Personal Information",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomTextFormField(
              controller: name,
              labelText: 'Full name',
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            CustomTextFormField(
              controller: dateOfBirth,
              labelText: 'Date of Birth',
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            const SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Color(0xfff9f9f9),
                          ),
                          height: 400,
                          width: MediaQuery.sizeOf(context).width,
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                    child: Container(
                                  width: 60,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xff9B9B9B)),
                                )),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Center(
                                  child: Text(
                                    'Password Change',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Metropolis",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                CustomTextFormField(
                                  controller: oldPassword,
                                  labelText: 'Old Password',
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(),
                                  ]),
                                ),
                                const SizedBox(height: 24,),
                                CustomTextFormField(
                                  controller: newPassword,
                                  labelText: 'New Password',
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(),
                                  ]),
                                ),
                                const SizedBox(height: 24,),
                                CustomTextFormField(
                                  controller: repeatNewPassword,
                                  labelText: 'Repeat New Password',
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(),
                                  ]),
                                ),
                                SizedBox(
                                    width: MediaQuery.sizeOf(context).width,
                                    child: CustomButton(label: "SAVE PASSWORD", onPressed: (){Navigator.of(context).pop();}))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Change",
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 16,
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            CustomTextFormField(
              controller: password,
              labelText: 'Password',
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            const SizedBox(height: 55,
            ),
            const Text(
              "Notifications",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.w600,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: ntfSetting.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      ntfSetting[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    value: checkedValue,
                    onChanged: (value) {
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
