import 'package:flutter/material.dart';
import './widgets/sign_in_screen.dart';

const _mainColor = Color(0xFF2F5382);

OutlineInputBorder _inputBorder(Color color, {double width = 1}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: color, width: width),
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _mainColor),
        useMaterial3: false,
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),

        // Стилі тексту: жирний підпис над полем і жирний заголовок екрана
        textTheme: const TextTheme(
          labelMedium: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          titleMedium: TextStyle(fontWeight: FontWeight.bold),
        ),


        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade200,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          border: _inputBorder(Colors.grey.shade700),
          enabledBorder: _inputBorder(Colors.grey.shade700),
          focusedBorder: _inputBorder(_mainColor, width: 2),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _mainColor,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(44),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),


        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: _mainColor,
            side: BorderSide(color: Colors.grey.shade300),
            minimumSize: const Size.fromHeight(44),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),


        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: _mainColor),
        ),
      ),
      home: const SignInScreen(),
    );
  }
}