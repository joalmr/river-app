import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:river_app/config/credit_cards/credit_card_my.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final creditCards = myCreditCards[0];
    return Container(
      height: 184,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        border: Border.all(color: Colors.white24),
        color: Color(creditCards.color),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 24,
            child: SvgPicture.asset(
              'assets/images/${creditCards.brand}.svg',
              height: 42,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  creditCards.type,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  creditCards.bank,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
