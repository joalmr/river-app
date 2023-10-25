import 'package:flutter/material.dart';

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
      body: const Center(child: Text('Home')),
    );
  }
}
