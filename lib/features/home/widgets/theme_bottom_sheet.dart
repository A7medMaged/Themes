// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:change_theme/features/home/cubit/theme_cubit.dart';

class ThemeBottomSheet extends StatelessWidget {
  final ThemeMode currentMode;

  const ThemeBottomSheet({
    super.key,
    required this.currentMode,
  });

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Choose Theme",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            groupValue: currentMode,
            title: const Text("Light"),
            secondary: const Icon(
              FontAwesomeIcons.solidSun,
              color: Colors.orange,
            ),
            onChanged: (value) {
              themeCubit.setTheme(value!);
              Navigator.pop(context);
            },
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: currentMode,
            title: const Text("Dark"),
            secondary: const Icon(
              FontAwesomeIcons.solidMoon,
              color: Colors.blueGrey,
            ),
            onChanged: (value) {
              themeCubit.setTheme(value!);
              Navigator.pop(context);
            },
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            groupValue: currentMode,
            title: const Text("System Default"),
            secondary: const Icon(
              FontAwesomeIcons.mobileScreen,
              color: Colors.green,
            ),
            onChanged: (value) {
              themeCubit.setTheme(value!);
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
