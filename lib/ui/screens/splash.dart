import 'package:climapp/ui/components/buttons.dart';
import 'package:climapp/ui/screens/home.dart';
import 'package:climapp/utils/colors.dart';
import 'package:climapp/utils/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: gradiente,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 64),
              child: Image.asset("assets/img/logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 64),
              child: Image.asset("assets/img/home_logo.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 64),
              child: Text("Boas-vindas!", style: extraLarge),
            ),
            PrimaryButton(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },),
          ],
        ),
      ),
    );
  }
}
