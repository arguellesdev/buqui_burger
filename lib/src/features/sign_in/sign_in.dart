import 'package:buqui_burgers/src/features/home_page/my_app_bar.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please write your name';
                  }
                  return null;
                },
                keyboardType: TextInputType.name),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Welcome'),
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
