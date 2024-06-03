import 'package:e_commerce_app/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/forgot_password_button.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../home/presentation/views/home_view.dart';
import '../widgets/bottom_actions.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
              const ScreenTitle(title: "Login"),
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
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                obscureText: true,
              ),
              ForgotPasswordButton(
                sentence: 'Forgot your password?',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForgotPasswordScreen()));
                },
              ),
              CustomButton(
                label: 'LOGIN',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  }
                },
              ),
              const Expanded(child: SizedBox()),
              const BottomActions(
                otherMethodeSentence: 'Or login with social account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
