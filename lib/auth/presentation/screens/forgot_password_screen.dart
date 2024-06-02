import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/screen_title.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController email = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
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
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ScreenTitle(title: "Forgot password"),
              const Text("Please, enter your email address. You will receive a link to create a new password via email."),
              CustomTextFormField(
                controller: email,
                labelText: 'Email',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),obscureText: false,
              ),
              CustomButton(
                label: 'SEND',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pop();
                    print('UserName: ${email.text}');
                  }
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
