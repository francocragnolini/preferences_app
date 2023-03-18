import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../shared_preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = "settings_screen";

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMode = false;
  // int gender = 1;
  // String name = "pedro";

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
              value: Preferences.isDarkmode,
              title: const Text('Darkmode'),
              onChanged: (value) {
                Preferences.isDarkmode = value;
                final themeProvider =
                    Provider.of<ThemeProvider>(context, listen: false);

                value
                    ? themeProvider.setDarkMode()
                    : themeProvider.setLightMode();
                setState(() {});
              }),
          const Divider(),
          RadioListTile(
            value: 1,
            groupValue: Preferences.gender,
            title: const Text("Masculino"),
            onChanged: (value) {
              //? because the value can be null (int? value)
              Preferences.gender = value ?? 1;
              setState(() {});
            },
          ),
          const Divider(),
          RadioListTile(
            value: 2,
            groupValue: Preferences.gender,
            title: const Text("Femenino"),
            onChanged: (value) {
              //? because the value can be null
              Preferences.gender = value ?? 2;
              setState(() {});
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              onChanged: (value) {
                Preferences.name = value;
                setState(() {});
              },
              initialValue: Preferences.name,
              decoration: const InputDecoration(
                  labelText: "Nombre", helperText: "Nombre del Usuario"),
            ),
          )
        ],
      )),
    );
  }
}
