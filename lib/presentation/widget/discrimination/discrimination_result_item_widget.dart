import 'package:flutter/material.dart';

class DiscriminationResultItemWidget extends StatelessWidget {
  final String riskFactor;
  const DiscriminationResultItemWidget({Key? key, required this.riskFactor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            const Icon(Icons.warning_amber),
            Text(
              riskFactor,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const Text(
              "주의!",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}





