import 'dart:math';
import 'package:flutter/material.dart';
import 'formats.dart';
import 'info.dart';

class GGView extends StatefulWidget {
  const GGView({super.key});

  @override
  GGViewState createState() => GGViewState();
}
class GGViewState extends State<GGView> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      setState(() => _currentPage++);
      _pageController.animateToPage(_currentPage, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() => _currentPage--);
      _pageController.animateToPage(_currentPage, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        /*
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            children: [
              Container(color: Colors.pinkAccent, child: const Center(child: Text("Welcome Page", textAlign: TextAlign.center, style: textStyle))),
              Scaffold(
                appBar: AppBar(title: const Text("Girls' Generation Members")),
                backgroundColor: Colors.pinkAccent,
                body: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          memberContainer('images/taeyeon.png', 'Taeyeon', () => memberInfo(context, 1)),
                          memberContainer('images/jessica.png', 'Jessica (formerly)', () => memberInfo(context, 2)),
                          memberContainer('images/sunny.png', 'Sunny', () => memberInfo(context, 3)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          memberContainer('images/tiffany.png', 'Tiffany Young', () => memberInfo(context, 4)),
                          memberContainer('images/hyoyeon.png', 'Hyo', () => memberInfo(context, 5)),
                          memberContainer('images/yuri.png', 'Kwon Yuri', () => memberInfo(context, 6)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          memberContainer('images/sooyoung.png', 'SooYoung', () => memberInfo(context, 7)),
                          memberContainer('images/yoona.png', 'Yoona', () => memberInfo(context, 8)),
                          memberContainer('images/seohyun.png', 'Seohyun', () => memberInfo(context, 9)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Page 3: SNSDice
              Scaffold(
                appBar: AppBar(
                  title: const Text("Sonyeo Si-dice (Dice Generation)"),
                  backgroundColor: Colors.pink,
                ),
                backgroundColor: Colors.pinkAccent,
                body: const SNSDicePage(),
              ),
            ],
          ),
          Positioned(
            left: 10,
            top: MediaQuery.of(context).size.height / 2 - 30,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: _previousPage,
            ),
          ),
          Positioned(
            right: 10,
            top: MediaQuery.of(context).size.height / 2 - 30,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: _nextPage,
            ),
          ),
        ],

         */
      ),
    );
  }

  // Function to create a member container

}
