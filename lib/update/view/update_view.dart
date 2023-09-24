import 'package:flutter/material.dart';
import 'package:navios_test/home/model/contact.dart';
import 'package:navios_test/update/viewmodel/update_viewmodel.dart';
import 'package:navios_test/update/widget/update_widgets.dart';
import 'package:provider/provider.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({super.key, required this.id, required this.contact});

  final String id;
  final Contact? contact;

  @override
  Widget build(BuildContext context) {
    UpdateViewModel vm = context.watch<UpdateViewModel>();
    return Scaffold(
        appBar: AppBar(
          title: updateTitle(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: vm.dataExist(contact)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    updateNameEntryField(vm.controllerName),
                    updateEmailEntryField(vm.controllerEmail),
                    updatePhoneEntryField(vm.controllerPhoneNumber),
                    updateErrorMessage(vm),
                    updateSubmitButton(vm, context, id)
                  ],
                )
              : Center(child: Text('No data to update')),
        ));
  }
}
