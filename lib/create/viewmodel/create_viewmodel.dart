import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';

class CreateViewModel extends ChangeNotifier {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPhoneNumber = TextEditingController();
  String errorMessage = "";

  CreateViewModel();

  Future createContact(String id, BuildContext context) async {
    if (!textFieldHasErrors()) {
      final docContact =
          FirebaseFirestore.instance.collection("contacts").doc(id);

      final contact = Contact(
          id: id,
          name: controllerName.text,
          email: controllerEmail.text,
          phone: controllerPhoneNumber.text);

      await docContact.set(contact.toJson());

      clearTextField();

      Navigator.pop(context);
    }
  }

  textFieldHasErrors() {
    if (controllerName.text.isEmpty) {
      errorMessage = "Name can't be empty!";
      notifyListeners();
      return true;
    } else if (controllerEmail.text.isEmpty) {
      errorMessage = "Email can't be empty!";
      notifyListeners();
      return true;
    } else if (controllerPhoneNumber.text.isEmpty) {
      errorMessage = "Phone can't be empty!";
      notifyListeners();
      return true;
    }
    errorMessage = "";
    notifyListeners();
    return false;
  }

  clearTextField() {
    controllerName.text = "";
    controllerEmail.text = "";
    controllerPhoneNumber.text = "";
    notifyListeners();
  }
}
