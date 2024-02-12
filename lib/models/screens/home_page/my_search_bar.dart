import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;
  // final ValueChanged<String> onSearch;

  const MySearchBar({
    super.key,
    required this.hintText,
    // required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(37),
          bottomRight: Radius.circular(37),
        ),
        gradient: LinearGradient(
          colors: [Color(0xFFF9881F), Color(0xFFFF774C)],
          stops: [0.4, 0.6],
        ),
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
        // onSubmitted: onSearch,
      ),
    );
  }
}
