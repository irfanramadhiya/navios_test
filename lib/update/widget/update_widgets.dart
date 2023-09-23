import 'package:flutter/material.dart';
import 'package:navios_test/update/viewmodel/update_viewmodel.dart';

Widget updateTitle() {
  return const Text("Create");
}

Widget updateEntryField(String title, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(labelText: title),
  );
}

Widget updateSubmitButton(UpdateViewModel vm, BuildContext context, String id) {
  return ElevatedButton(
      onPressed: () => vm.updateContact(id, context), child: Text("Update"));
}
