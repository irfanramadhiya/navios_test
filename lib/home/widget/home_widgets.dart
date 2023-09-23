import 'package:flutter/material.dart';
import 'package:navios_test/home/viewmodel/home_viewmodel.dart';

Widget homeTitle() {
  return const Text("Firebase Auth");
}

Widget userUid(HomeViewModel vm) {
  return Text(vm.getCurrentEmail());
}

Widget createButton(BuildContext context, HomeViewModel vm) {
  return ElevatedButton(
      onPressed: () => vm.navigateToCreate(context),
      child: const Text("Create"));
}

Widget readButton(BuildContext context, HomeViewModel vm) {
  return ElevatedButton(
      onPressed: () => vm.navigateToRead(context), child: const Text("Read"));
}

Widget updateButton(BuildContext context, HomeViewModel vm) {
  return ElevatedButton(
      onPressed: () => vm.navigateToUpdate(context),
      child: const Text("Update"));
}

Widget deleteButton(BuildContext context, HomeViewModel vm) {
  return ElevatedButton(
      onPressed: () => vm.navigateToDelete(context),
      child: const Text("Delete"));
}

Widget signOutButton(HomeViewModel vm) {
  return ElevatedButton(onPressed: vm.signOut, child: const Text("Sign Out"));
}
