import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:river_app/config/styles/colors/colors.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.child,
    this.onPressed,
    required this.color,
  });
  final Widget child;
  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? BtnIOS(
            onPressed: onPressed,
            color: color,
            child: child,
          )
        : BtnAndroid(
            onPressed: onPressed,
            color: color,
            child: child,
          );
  }
}

//ios
class BtnIOS extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final Color color;

  const BtnIOS({
    super.key,
    this.onPressed,
    required this.child,
    this.color = primerColor,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: color,
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      pressedOpacity: 0.8,
      child: child,
    );
  }
}

//android
class BtnAndroid extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final Color color;

  const BtnAndroid({
    super.key,
    this.onPressed,
    required this.child,
    this.color = primerColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(color),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
