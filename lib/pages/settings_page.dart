import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koko_music/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text("S E T T I N G S"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary,borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(25),
        child: Row(
          children: [
            //dark mode
            Text("Dark Mode",style: TextStyle(fontWeight: FontWeight.bold),),
            // switch
            CupertinoSwitch(
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (vale) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
            )
          ],
        ),
      ),
    );
  }
}
