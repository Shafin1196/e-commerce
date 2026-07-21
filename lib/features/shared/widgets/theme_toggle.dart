import 'package:e_commerce/app/providers/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModeProvider>(
      builder: (context, themeModeProvider, _) {
        return DropdownButton<ThemeMode>(
          value: themeModeProvider.themeMode,
          onChanged: (ThemeMode? newValue) {
            themeModeProvider.changeThemeMode(newValue!);
          },
          
          items: [
            DropdownMenuItem(value: ThemeMode.light, child: Text('Light')),
            DropdownMenuItem(value: ThemeMode.dark, child: Text('Dark')),
          ],
        );
      }
    );
  }
}
