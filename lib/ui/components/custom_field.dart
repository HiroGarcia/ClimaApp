import 'package:climapp/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField(
      {super.key, required this.controller, required this.onEditingComplete});

  final TextEditingController controller;
  final Function onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onEditingComplete: () {
        onEditingComplete();
        // FocusScope.of(context).unfocus();
      },
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
