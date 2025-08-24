/// main.dart
///
/// This file contains the core of the app.
library;

import 'package:flutter/material.dart';
import 'formats.dart';
import 'menu.dart';

void main() => runApp(const GirlsGen());

class GirlsGen extends StatelessWidget {
  /// App.
  const GirlsGen({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: ThemeData(
      fontFamily: 'Segoe Print',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.pink,
        titleTextStyle: TextStyle(color: white, fontSize: 20, fontFamily: 'Segoe Print'),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: const GGView(),
  );
}
