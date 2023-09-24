import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/auth.dart';
import 'package:navios_test/create/view/create_view.dart';
import 'package:navios_test/delete/view/delete_view.dart';
import 'package:navios_test/home/model/contact.dart';
import 'package:navios_test/read/view/read_view.dart';
import 'package:navios_test/update/view/update_view.dart';

class HomeViewModel extends ChangeNotifier {
  User? user = Auth().currentUser;

  HomeViewModel();

  Future<void> signOut() async {
    await Auth().signOut();
    notifyListeners();
  }

  getCurrentEmail() {
    user = Auth().currentUser;
    return user?.email ?? "User Email";
  }

  navigateToCreate(BuildContext context) async {
    Contact? contact = await readContact(user?.email ?? "User Email");
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CreateView(
                  id: user?.email ?? "User Email",
                  hasData: contact == null ? false : true,
                )));
  }

  navigateToRead(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ReadView(id: user?.email ?? "User Email")));
  }

  navigateToUpdate(BuildContext context) async {
    Contact? contact = await readContact(user?.email ?? "User Email");
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => UpdateView(
                  id: user?.email ?? "User Email",
                  contact: contact,
                )));
  }

  navigateToDelete(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => DeleteView(id: user?.email ?? "User Email")));
  }

  Future<Contact?> readContact(String id) async {
    final docContact =
        FirebaseFirestore.instance.collection('contacts').doc(id);
    final snapshot = await docContact.get();

    if (snapshot.exists) {
      return Contact.fromJson(snapshot.data()!);
    }
    return null;
  }
}
