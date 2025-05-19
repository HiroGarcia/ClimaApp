import 'package:climapp/utils/colors.dart';
import 'package:climapp/utils/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {onTap();},
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          color: violetaDestaque,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                "Entrar",
                style: _primaryButtonTextStyle,
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: azulVoid,
            ),
          ],
        ),
      ),
    );
  }
}

final TextStyle _primaryButtonTextStyle = largeSemibold.copyWith(color: azulVoid);
