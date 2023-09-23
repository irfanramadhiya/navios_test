import 'package:flutter/material.dart';
import 'package:navios_test/delete/viewmodel/delete_viewmodel.dart';
import 'package:navios_test/delete/widget/delete_widgets.dart';
import 'package:provider/provider.dart';

class DeleteView extends StatelessWidget {
  const DeleteView({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    DeleteViewModel vm = context.watch<DeleteViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: deleteTitle(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [deleteSubmitButton(vm, id, context)],
        ),
      ),
    );
  }
}
