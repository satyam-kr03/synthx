import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In.',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              CustomField(
                controller: emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              CustomField(
                controller: passwordController,
                isObscureText: true,
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              AuthGradientButton(
                buttonText: 'Sign In',
                onTap: () async {},
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Pallete.gradient2,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
