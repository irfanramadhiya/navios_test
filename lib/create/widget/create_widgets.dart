import 'package:flutter/material.dart';
import 'package:navios_test/create/viewmodel/create_viewmodel.dart';

Widget createTitle() {
  return const Text("Create");
}

Widget createNameEntryField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: "name"),
    keyboardType: TextInputType.name,
  );
}

Widget createEmailEntryField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: "email"),
    keyboardType: TextInputType.emailAddress,
  );
}

Widget createPhoneEntryField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: "phone"),
    keyboardType: TextInputType.phone,
  );
}

Widget createErrorMessage(CreateViewModel vm) {
  return Text(
    vm.errorMessage == "" ? "" : "Humm ? ${vm.errorMessage}",
    style: const TextStyle(color: Colors.red),
  );
}

Widget createSubmitButton(String id, CreateViewModel vm, BuildContext context) {
  return ElevatedButton(
      onPressed: () => vm.createContact(id, context), child: Text("Create"));
}
