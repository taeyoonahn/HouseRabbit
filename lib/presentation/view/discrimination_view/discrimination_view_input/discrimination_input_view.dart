import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../view_model/discrimination_view_model.dart';

class DiscriminationInputView extends StatelessWidget {
  const DiscriminationInputView({super.key});

  @override
  Widget build(BuildContext context) {
    final discriminationViewModel = context.read<DiscriminationViewModel>();
    return discriminationViewModel.discriminationInput(context);
  }
}
