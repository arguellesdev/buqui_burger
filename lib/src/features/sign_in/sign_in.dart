import 'package:buqui_burgers/src/assets/space_sized_box.dart';
import 'package:buqui_burgers/src/features/home_page/my_app_bar.dart';
import 'package:flutter/material.dart';

import '../../assets/text_forms_assets.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInState();
}

class _LogInState extends State<LogInForm> {
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
                  const MyVerticalSpaceBox(
                    height: 100,
                  ),
                  const LogInFields(),
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
