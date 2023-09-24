import 'package:flutter/material.dart';
import 'package:navios_test/login_register/viewmodel/login_register_viewmodel.dart';

Widget loginRegisterTitle() {
  return const Text("Navios Test");
}

Widget emailField(String title, LoginRegisterViewModel vm) {
  return TextField(
    controller: vm.controllerEmail,
    decoration: InputDecoration(labelText: title),
  );
}

Widget passField(String title, LoginRegisterViewModel vm) {
  return TextField(
    obscureText: vm.isHidden,
    controller: vm.controllerPassword,
    decoration: InputDecoration(
      labelText: title,
      suffixIcon: IconButton(
        icon: Icon(vm.isHidden ? Icons.visibility_off : Icons.visibility),
        onPressed: vm.changeVisibility,
      ),
    ),
  );
}

Widget loginRegisterErrorMessage(LoginRegisterViewModel vm) {
  return Text(
    vm.errorMessage == "" ? "" : "Humm ? ${vm.errorMessage}",
    style: const TextStyle(color: Colors.red),
  );
}

Widget loginRegisterSubmitButton(LoginRegisterViewModel vm) {
  return ElevatedButton(
      onPressed: vm.isLogin
          ? vm.signInWithEmailAndPassword
          : vm.createUserWithEmailAndPassword,
      child: Text(vm.isLogin ? "Login" : "Register"));
}

Widget loginOrRegisterButton(LoginRegisterViewModel vm) {
  return TextButton(
      onPressed: vm.changeLoginState,
      child: Text(vm.isLogin ? "Register Instead" : "Login Instead"));
}
