import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';

class CreateViewModel extends ChangeNotifier {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPhoneNumber = TextEditingController();

  CreateViewModel();

  Future createContact(String id, BuildContext context) async {
    final docContact =
        FirebaseFirestore.instance.collection("contacts").doc(id);

    final contact = Contact(
        id: id,
        name: controllerName.text,
        email: controllerEmail.text,
        phone: controllerPhoneNumber.text);

    await docContact.set(contact.toJson());

    Navigator.pop(context);
  }
}
