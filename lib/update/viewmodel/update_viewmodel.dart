import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';

class UpdateViewModel extends ChangeNotifier {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPhoneNumber = TextEditingController();
  String errorMessage = "";

  UpdateViewModel();

  dataExist(Contact? contact) {
    if (contact != null) {
      controllerName.text = contact.name;
      controllerEmail.text = contact.email;
      controllerPhoneNumber.text = contact.phone;
      return true;
    } else {
      return false;
    }
  }

  updateContact(String id, BuildContext context) {
    if (!textFieldHasErrors()) {
      final docContact =
          FirebaseFirestore.instance.collection("contacts").doc(id);

      final contact = Contact(
          id: id,
          name: controllerName.text,
          email: controllerEmail.text,
          phone: controllerPhoneNumber.text);

      docContact.update(contact.toJson());

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
}
