import 'package:climapp/ui/screens/splash.dart';
import 'package:climapp/utils/theme.dart';
import 'package:flutter/material.dart';

class Climapp extends StatelessWidget {
  const Climapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Climapp",
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
