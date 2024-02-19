import 'package:flutter/material.dart';

import '../../home_screen/home_screen.dart';
import 'custom_text_form_field.dart';
import 'labeled_divider.dart';
import 'social_media_buttons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Enter Email',
            validator: (value) {
              if (value == null || !value.contains('@')) {
                return 'Please enter a valid email!';
              }
              return null;
            },
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            hintText: 'Password',
            suffixIcon: const Icon(
              Icons.visibility,
              color: Colors.black54,
            ),
            validator: (value) {
              if (value == null || value.length < 8) {
                return 'Please enter a valid password!';
              }
              return null;
            },
          ),
          Container(
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                textAlign: TextAlign.end,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                }
              },
              style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 18)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.redAccent),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const LabeledDivider(label: 'or continue with'),
          const SizedBox(height: 30),
          const SocialMediaLoginButtons(),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member? '),
              Text(
                'Register now',
                style: TextStyle(color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}
