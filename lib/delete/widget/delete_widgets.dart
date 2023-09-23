import 'package:flutter/material.dart';
import 'package:navios_test/delete/viewmodel/delete_viewmodel.dart';

Widget deleteTitle() {
  return const Text("Delete");
}

Widget deleteSubmitButton(DeleteViewModel vm, String id, BuildContext context) {
  return ElevatedButton(
    onPressed: () => vm.deleteContact(id, context),
    child: Text("Delete Data"),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
  );
}
