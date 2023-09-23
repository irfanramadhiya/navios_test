import 'package:flutter/material.dart';
import 'package:navios_test/update/viewmodel/update_viewmodel.dart';
import 'package:navios_test/update/widget/update_widgets.dart';
import 'package:provider/provider.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({super.key, required this.id});

  final String id;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            updateEntryField("name", vm.controllerName),
            updateEntryField("email", vm.controllerEmail),
            updateEntryField("phone", vm.controllerPhoneNumber),
            updateSubmitButton(vm, context, id)
          ],
        ),
      ),
    );
  }
}

// class UpdateView extends StatefulWidget {
//   const UpdateView({super.key, required this.id});

//   final String id;

//   @override
//   State<UpdateView> createState() => _UpdateViewState();
// }

// class _UpdateViewState extends State<UpdateView> {
//   final TextEditingController _controllerName = TextEditingController();
//   final TextEditingController _controllerEmail = TextEditingController();
//   final TextEditingController _controllerPhoneNumber = TextEditingController();

//   updateContact() {
//     final docContact =
//         FirebaseFirestore.instance.collection("contacts").doc(widget.id);

//     final contact = Contact(
//         id: widget.id,
//         name: _controllerName.text,
//         email: _controllerEmail.text,
//         phone: _controllerPhoneNumber.text);

//     docContact.update(contact.toJson());

//     Navigator.pop(context);
//   }

//   Widget _title() {
//     return const Text("Create");
//   }

//   Widget _entryField(String title, TextEditingController controller) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(labelText: title),
//     );
//   }

//   Widget _submitButton() {
//     return ElevatedButton(onPressed: updateContact, child: Text("Update"));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: _title(),
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _entryField("name", _controllerName),
//             _entryField("email", _controllerEmail),
//             _entryField("phone", _controllerPhoneNumber),
//             _submitButton()
//           ],
//         ),
//       ),
//     );
//   }
// }
