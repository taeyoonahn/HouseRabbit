import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../../../view_model/discrimination_view_model.dart';

class DiscriminationResultView extends StatelessWidget {
  const DiscriminationResultView({super.key});

  @override
  Widget build(BuildContext context) {
    final discriminationViewModel = context.read<DiscriminationViewModel>();
    Color rankColor;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 40),
                  const Text('안전보고서',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800)
                  ),
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Divider(
                      thickness: 1.6,
                      color: HexColor('#1E319D'),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                      discriminationViewModel.house.name,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800)
                  ),
                  Text(
                      discriminationViewModel.house.rank,
                      style: TextStyle(
                          fontSize: 25,
                          color: discriminationViewModel.showHouseColor(),
                          fontWeight: FontWeight.w800),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Divider(
                      thickness: 1.6,
                      color: HexColor('#1E319D'),
                    ),
                  ),
                ],
              ),
              discriminationViewModel.showDiscriminationReport(),
            ],
          ),
        ),
      ),
    );
  }
}
