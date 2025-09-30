// ignore_for_file: deprecated_member_use

import 'package:change_theme/features/home/cubit/theme_cubit.dart';
import 'package:change_theme/features/home/widgets/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, themeMode) {
              return Card(
                margin: const EdgeInsets.all(12),
                elevation: 5,
                shadowColor: Colors.grey.withOpacity(0.25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: const Icon(
                    FontAwesomeIcons.circleHalfStroke,
                    size: 30,
                  ),
                  title: const Text(
                    "Change Theme",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(themeMode.name.toUpperCase()),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (_) {
                        return ThemeBottomSheet(currentMode: themeMode);
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
