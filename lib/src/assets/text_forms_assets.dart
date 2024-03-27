import 'package:buqui_burgers/src/assets/space_sized_box.dart';
import 'package:flutter/material.dart';

class SignInFields extends StatefulWidget {
  const SignInFields({super.key});

  @override
  State<SignInFields> createState() => _SignInFieldsState();
}

class _SignInFieldsState extends State<SignInFields> {
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF9881F),
            borderRadius: BorderRadius.all(Radius.circular(88.0)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Enter your username',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
          ),
        ),
        const MyVerticalSpaceBox(
          height: 16,
        ),
        // Password input field
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(88.0)),
            color: Color(0xFFF9881F),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            obscureText: false,
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
        ),
      ],
    );
  }
}
