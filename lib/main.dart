import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: const Welcome(),
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 206, 129),
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 35, 35, 35),
              ),
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF6E83F5),
            ),
            primaryColor: const Color(0xFF6E83F5),
            textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)));
  }
}
