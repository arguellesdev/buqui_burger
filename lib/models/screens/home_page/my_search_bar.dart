import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: MediaQuery.of(context).size.width,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(37),
          bottomRight: Radius.circular(37),
        ),
      ),
      padding: const EdgeInsets.all(12),
      alignment: Alignment.bottomCenterCenter,
      child: const Expanded(
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black26,
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 14),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal:16, vertical: 12),
            hintText: 'What type of burger do you want?',
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }
}
