import 'package:flutter/material.dart';
import 'menu.dart';

void main() => runApp(const GirlsGen());

class GirlsGen extends StatelessWidget {
  const GirlsGen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Segoe Print', appBarTheme: const AppBarTheme(backgroundColor: Colors.pink, titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Segoe Print'))),
      debugShowCheckedModeBanner: false,
      home: const GGView(),
    );
  }
}

