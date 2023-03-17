import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = "settings_screen";

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SwitchListTile.adaptive(
              value: true,
              title: const Text('Darkmode'),
              onChanged: (value) {}),
          const Divider(),
          RadioListTile(
            value: 1,
            groupValue: 1,
            title: const Text("Masculino"),
            onChanged: (value) {},
          ),
          const Divider(),
          RadioListTile(
            value: 2,
            groupValue: 1,
            title: const Text("Femenino"),
            onChanged: (value) {},
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              initialValue: "Franco",
              decoration: const InputDecoration(
                  labelText: "Nombre", helperText: "Nombre del Usuario"),
            ),
          )
        ],
      )),
    );
  }
}
