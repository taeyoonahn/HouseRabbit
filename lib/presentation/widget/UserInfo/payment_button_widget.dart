import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentButtonWidget extends StatelessWidget {
  const PaymentButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(15),
        //margin: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor('#1E319D'),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "당근 충전",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}