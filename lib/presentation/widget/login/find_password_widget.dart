import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FindPasswordWidget extends StatelessWidget {
  const FindPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          //color: Color(0xff281537),
          color: HexColor('#1E319D'),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "인증 이메일 전송",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}