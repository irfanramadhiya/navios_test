import 'package:flutter/material.dart';
import 'package:navios_test/create/viewmodel/create_viewmodel.dart';
import 'package:navios_test/create/widget/create_widgets.dart';
import 'package:provider/provider.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key, required this.id, required this.hasData});

  final String id;
  final bool hasData;

  @override
  Widget build(BuildContext context) {
    CreateViewModel vm = context.watch<CreateViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: createTitle(),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: !hasData
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    createNameEntryField(vm.controllerName),
                    createEmailEntryField(vm.controllerEmail),
                    createPhoneEntryField(vm.controllerPhoneNumber),
                    createErrorMessage(vm),
                    createSubmitButton(id, vm, context)
                  ],
                )
              : const Center(
                  child: const Text("Data already created"),
                )),
    );
  }
}
