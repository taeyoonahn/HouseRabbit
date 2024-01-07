import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../../view_model/discrimination_view_model.dart';

class DiscriminationRadioSquareButtonWidget extends StatelessWidget {
  final int value;

  const DiscriminationRadioSquareButtonWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final discriminationViewModel = context.read<DiscriminationViewModel>();

    return InkWell(
      onTap: () {
        discriminationViewModel.setRadioValue(value);
      },
      child: Consumer<DiscriminationViewModel>(
        builder: (context, model, child) {
          return Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.black87,
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: discriminationViewModel.radioValue == value
                ? Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: HexColor('#1E319D'),
                    ),
                  )
                : null,
          );
        },
      ),
    );
  }
}
