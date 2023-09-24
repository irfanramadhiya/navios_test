import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';
import 'package:navios_test/read/viewmodel/read_viewmodel.dart';
import 'package:navios_test/read/widget/read_widgets.dart';
import 'package:provider/provider.dart';

class ReadView extends StatelessWidget {
  const ReadView({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    ReadViewModel vm = context.watch<ReadViewModel>();
    return Scaffold(
        appBar: AppBar(
          title: readTitle(),
        ),
        body: FutureBuilder<Contact?>(
            future: vm.readContact(id),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Something went wrong ${snapshot.error}");
              } else if (snapshot.hasData) {
                final contact = snapshot.data;

                return contact == null
                    ? const Center(
                        child: Text('No data yet'),
                      )
                    : buildContact(contact);
              } else {
                return const Center(child: Text('No data yet'));
              }
            }));
  }
}
