import 'package:buqui_burgers/src/features/home_page/my_app_bar.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInState();
}

class _SignInState extends State<SignInForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Name input field
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your username', // Placeholder text
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null; // No validation error
                    },
                  ),
                  const SizedBox(height: 16.0), // Add spacing between fields
                  // Password input field
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your password', // Placeholder text
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      final hasUppercase = value.contains(RegExp(r'[A-Z]'));
                      if (!hasUppercase) {
                        return 'Password needs to contain at least one uppercase letter';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final name = _nameController.text;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Hola, $name!'),
                              backgroundColor: const Color(0xFFFF774C),
                              duration: const Duration(seconds: 2),
                              elevation: 6.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(64.0),
                              ),
                            ),
                          );
                          _formKey.currentState!.reset();
                          _nameController.text = '';
                        }
                      },
                      child: const Text('Log In'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
