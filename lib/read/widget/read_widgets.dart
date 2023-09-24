import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';

Widget readTitle() {
  return const Text("Read");
}

Widget buildContact(Contact contact) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Contact Details"),
        Text("Name: ${contact.name}"),
        Text("Email: ${contact.email}"),
        Text("Phone Number:${contact.phone}")
      ],
    ),
  );
}

  // Widget buildContacts(Contact contact) => ListTile(
  //       title: Text(contact.name),
  //     );