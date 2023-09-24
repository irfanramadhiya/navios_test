import 'package:flutter/material.dart';
import 'package:navios_test/login_register/viewmodel/login_register_viewmodel.dart';
import 'package:navios_test/login_register/widget/login_register_widgets.dart';
import 'package:provider/provider.dart';

class LoginRegisterView extends StatelessWidget {
  const LoginRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginRegisterViewModel vm = context.watch<LoginRegisterViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: loginRegisterTitle(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emailField("email", vm),
            passField("password", vm),
            loginRegisterErrorMessage(vm),
            loginRegisterSubmitButton(vm),
            loginOrRegisterButton(vm),
          ],
        ),
      ),
    );
  }
}
