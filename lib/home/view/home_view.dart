import 'package:flutter/material.dart';
import 'package:navios_test/home/viewmodel/home_viewmodel.dart';
import 'package:navios_test/home/widget/home_widgets.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel vm = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: homeTitle(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userUid(vm),
            createButton(context, vm),
            readButton(context, vm),
            updateButton(context, vm),
            deleteButton(context, vm),
            signOutButton(vm)
          ],
        ),
      ),
    );
  }
}
