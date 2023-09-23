import 'package:flutter/material.dart';
import 'package:navios_test/create/viewmodel/create_viewmodel.dart';
import 'package:navios_test/create/widget/create_widgets.dart';
import 'package:provider/provider.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key, required this.id});

  final String id;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            createEntryField("name", vm.controllerName),
            createEntryField("email", vm.controllerEmail),
            createEntryField("phone", vm.controllerPhoneNumber),
            createSubmitButton(id, vm, context)
          ],
        ),
      ),
    );
  }
}

// class CreateView extends StatefulWidget {
//   const CreateView({super.key, required this.id});

//   final String id;

//   @override
//   State<CreateView> createState() => _CreateViewState();
// }

// class _CreateViewState extends State<CreateView> {
//   final TextEditingController _controllerName = TextEditingController();
//   final TextEditingController _controllerEmail = TextEditingController();
//   final TextEditingController _controllerPhoneNumber = TextEditingController();

//   Future createContact() async {
//     final docContact =
//         FirebaseFirestore.instance.collection("contacts").doc(widget.id);

//     final contact = Contact(
//         id: widget.id,
//         name: _controllerName.text,
//         email: _controllerEmail.text,
//         phone: _controllerPhoneNumber.text);

//     await docContact.set(contact.toJson());

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
//     return ElevatedButton(onPressed: createContact, child: Text("Create"));
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
