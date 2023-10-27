import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/app/presentation/views/home/credit_card_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.maxFinite,
              // width: double.maxFinite,
              // color: Colors.white,
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.58,
                width: MediaQuery.of(context).size.width * 0.6,
                color: const Color(0xFF303C92), // 3A48AD color de la derecha
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.58,
                width: MediaQuery.of(context).size.width * 0.4,
                color: const Color(0xFF3A48AD), // 3A48AD color de la derecha
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                top: 18,
                bottom: 0,
                left: 12,
                right: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      print('Icono izquierda');
                    },
                    icon: const Icon(
                      Icons.grid_view_sharp,
                      color: Colors.white,
                    ),
                  ),
                  const CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/me.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 72,
              left: 24,
              child: Text(
                'Hi, Mark',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            const Positioned(
              top: 132,
              right: 0,
              child: CreditCardWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
