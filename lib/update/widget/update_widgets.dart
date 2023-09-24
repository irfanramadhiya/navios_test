import 'package:flutter/material.dart';
import 'package:navios_test/update/viewmodel/update_viewmodel.dart';

Widget updateTitle() {
  return const Text("Create");
}

Widget updateNameEntryField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: "name"),
    keyboardType: TextInputType.name,
  );
}

Widget updateEmailEntryField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: "email"),
    keyboardType: TextInputType.emailAddress,
  );
}

Widget updatePhoneEntryField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: "phone"),
    keyboardType: TextInputType.phone,
  );
}

Widget updateErrorMessage(UpdateViewModel vm) {
  return Text(
    vm.errorMessage == "" ? "" : "Humm ? ${vm.errorMessage}",
    style: const TextStyle(color: Colors.red),
  );
}

Widget updateSubmitButton(UpdateViewModel vm, BuildContext context, String id) {
  return ElevatedButton(
      onPressed: () => vm.updateContact(id, context), child: Text("Update"));
}
