import 'package:climapp/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        fillColor: fillTransparente,
        filled: true,
        hintText: "Digite a cidade",
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}
