import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DeleteViewModel extends ChangeNotifier {
  DeleteViewModel();

  deleteContact(String id, BuildContext context) {
    final docContact =
        FirebaseFirestore.instance.collection("contacts").doc(id);
    docContact.delete();
    Navigator.pop(context);
  }
}
