import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:navios_test/create/viewmodel/create_viewmodel.dart';
import 'package:navios_test/delete/viewmodel/delete_viewmodel.dart';
import 'package:navios_test/home/viewmodel/home_viewmodel.dart';
import 'package:navios_test/login_register/viewmodel/login_register_viewmodel.dart';
import 'package:navios_test/read/viewmodel/read_viewmodel.dart';
import 'package:navios_test/update/viewmodel/update_viewmodel.dart';
import 'package:navios_test/widget_tree.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginRegisterViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => CreateViewModel()),
        ChangeNotifierProvider(create: (_) => ReadViewModel()),
        ChangeNotifierProvider(create: (_) => UpdateViewModel()),
        ChangeNotifierProvider(create: (_) => DeleteViewModel()),
      ],
      child: MaterialApp(
        title: 'Navios Test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const WidgetTree(),
      ),
    );
  }
}
