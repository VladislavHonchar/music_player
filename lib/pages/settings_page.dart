import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("S E T T I G S"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(25),
        decoration:  BoxDecoration( 
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // dark mode
            const Text("Dark mode", style: TextStyle(fontWeight: FontWeight.bold),),
            // switch
           CupertinoSwitch(
            value: model.isDarkMode, 
            onChanged: (value) => model.toggleTheme()
            ),
          ],
        ),
      ),
    );
  }
}