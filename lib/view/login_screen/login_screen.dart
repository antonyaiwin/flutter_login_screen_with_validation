import 'package:flutter/material.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue.withOpacity(0.5),
              Colors.blue.withOpacity(0.3),
              Colors.blue.withOpacity(0.2),
              Colors.blue.withOpacity(0.3),
              Colors.blue.withOpacity(0.5),
            ], tileMode: TileMode.repeated),
          ),
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Hello Again!',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Welcome back, we\'ve missed you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 18),
              LoginForm(formKey: formKey),
            ],
          ),
        ),
      ),
    );
  }
}
