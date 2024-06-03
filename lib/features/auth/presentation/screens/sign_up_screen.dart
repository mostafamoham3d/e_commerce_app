import 'package:e_commerce_app/features/auth/presentation/screens/login_screen.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../widgets/bottom_actions.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/forgot_password_button.dart';
import '../widgets/screen_title.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const ScreenTitle(title: "Sign up"),
              CustomTextFormField(
                controller: email,
                labelText: 'Email',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
              CustomTextFormField(
                controller: password,
                labelText: 'Password',
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              CustomTextFormField(
                controller: rePassword,
                labelText: 'RePassword',
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              ForgotPasswordButton(
                sentence: 'Already have an account?',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
              ),
              CustomButton(
                label: 'SIGN UP',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
              ),
              const Expanded(child: SizedBox()),
              const BottomActions(
                otherMethodeSentence: 'Or sing up with social account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
