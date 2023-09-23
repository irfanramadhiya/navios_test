import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';

Widget readTitle() {
  return const Text("Read");
}

Widget buildContact(Contact contact) {
  return Column(
    children: [Text(contact.name), Text(contact.email), Text(contact.phone)],
  );
}

  // Widget buildContacts(Contact contact) => ListTile(
  //       title: Text(contact.name),
  //     );