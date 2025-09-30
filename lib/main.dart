import 'package:change_theme/core/theme/theme.dart';
import 'package:change_theme/features/home/cubit/theme_cubit.dart';
import 'package:change_theme/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeCubit = ThemeCubit();
  await themeCubit.loadTheme();
  runApp(
    MyApp(
      themeCubit: themeCubit,
    ),
  );
}

class MyApp extends StatelessWidget {
  final ThemeCubit themeCubit;
  const MyApp({super.key, required this.themeCubit});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: themeCubit,
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: themeMode,
            themeAnimationCurve: Curves.fastOutSlowIn,
            themeAnimationDuration: const Duration(milliseconds: 1500),
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
