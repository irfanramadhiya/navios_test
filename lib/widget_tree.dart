import 'package:flutter/material.dart';
import 'package:navios_test/auth.dart';
import 'package:navios_test/home/view/home_view.dart';
import 'package:navios_test/login_register/view/login_register_view.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomeView();
        } else {
          return const LoginRegisterView();
        }
      },
    );
  }
}
