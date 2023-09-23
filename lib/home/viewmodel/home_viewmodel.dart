import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/auth.dart';
import 'package:navios_test/create/view/create_view.dart';
import 'package:navios_test/delete/view/delete_view.dart';
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

  navigateToCreate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CreateView(id: user?.email ?? "User Email")));
  }

  navigateToRead(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ReadView(id: user?.email ?? "User Email")));
  }

  navigateToUpdate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => UpdateView(id: user?.email ?? "User Email")));
  }

  navigateToDelete(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => DeleteView(id: user?.email ?? "User Email")));
  }
}
