import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system) {
    loadTheme();
  }

  Future<void> setTheme(ThemeMode mode) async {
    emit(mode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("themeMode", mode.toString());
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeStr = prefs.getString("themeMode");

    if (themeStr == ThemeMode.light.toString()) {
      emit(ThemeMode.light);
    } else if (themeStr == ThemeMode.dark.toString()) {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.system);
    }
  }
}
