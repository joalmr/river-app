import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:river_app/config/styles/colors/colors.dart';

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? BtnIOS(
            onPressed: onPressed,
            text: text,
          )
        : BtnAndroid(
            onPressed: onPressed,
            text: text,
          );
  }
}

//ios
class BtnIOS extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const BtnIOS({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      // pressedOpacity: 0.8,
      child: Text(
        text,
        style: const TextStyle(color: primerColor),
      ),
    );
  }
}

//android
class BtnAndroid extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const BtnAndroid({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(primerColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
