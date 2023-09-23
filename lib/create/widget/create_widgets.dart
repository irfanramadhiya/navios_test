import 'package:flutter/material.dart';
import 'package:navios_test/create/viewmodel/create_viewmodel.dart';

Widget createTitle() {
  return const Text("Create");
}

Widget createEntryField(String title, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(labelText: title),
  );
}

Widget createSubmitButton(String id, CreateViewModel vm, BuildContext context) {
  return ElevatedButton(
      onPressed: () => vm.createContact(id, context), child: Text("Create"));
}
