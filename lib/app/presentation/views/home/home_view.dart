import 'package:flutter/material.dart';
import 'package:river_app/config/styles/colors/colors.dart';
import 'package:river_app/config/widgets/primary_button.dart';
import 'package:river_app/config/widgets/secondary_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.apple,
          color: Colors.black87,
        ),
        actions: const [
          CircleAvatar(
            child: Image(
              image: AssetImage('assets/images/me.png'),
              fit: BoxFit.cover,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Text('Home'),
          ButtonPrimary(
            color: primerColor,
            onPressed: () {},
            child: const Text('Primary'),
          ),
          ButtonSecondary(
            text: 'Secondary',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
