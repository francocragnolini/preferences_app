import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      //? drawer puede ser cualquier  Widget peo existe un built-in Widget llamado Drawer()
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('isDarkmode'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre de usuario'),
          Divider(),
        ],
      ),
    );
  }
}
