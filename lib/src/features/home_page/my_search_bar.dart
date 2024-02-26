import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;

  const MySearchBar({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(37)),
        color: Colors.white60,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black12,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Colors.black26,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintText: hintText,
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
