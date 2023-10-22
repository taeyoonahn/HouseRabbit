import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:house_rabbit/presentation/view_model/login_view_model.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import '../widget/loading_indicator_widget.dart';
import 'login_view.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
    );
  }
}



