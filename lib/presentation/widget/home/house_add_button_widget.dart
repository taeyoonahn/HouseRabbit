import 'package:flutter/material.dart';

class HouseAddButtonWidget extends StatelessWidget {
  const HouseAddButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: 300,
        height: 58,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black87),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500]!,
                offset: const Offset(4,4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ]
        ),
        child: const Center(child: Icon(Icons.add_home, color: Colors.black87)),
      ),
    );
  }
}
