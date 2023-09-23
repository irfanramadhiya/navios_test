import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';

class ReadViewModel extends ChangeNotifier {
  ReadViewModel();

  Future<Contact?> readContact(String id) async {
    final docContact =
        FirebaseFirestore.instance.collection('contacts').doc(id);
    final snapshot = await docContact.get();

    if (snapshot.exists) {
      return Contact.fromJson(snapshot.data()!);
    }
    return null;
  }

  // Stream<List<Contact>> readContacts() =>
  //     FirebaseFirestore.instance.collection('contacts').snapshots().map(
  //           (snapshot) => snapshot.docs
  //               .map((doc) => Contact.fromJson(doc.data()))
  //               .toList(),
  //         );
}
