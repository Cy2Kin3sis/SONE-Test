import 'dart:math';
import 'package:flutter/material.dart';

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
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            children: [
              Container(
                color: Colors.pinkAccent,
                child: const Center(
                  child: Text(
                    "Welcome Page",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Page 2: Members Grid
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
                          memberContainer('images/taeyeon.png', 'Taeyeon'),
                          memberContainer('images/jessica.png', 'Jessica (formerly)'),
                          memberContainer('images/sunny.png', 'Sunny'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          memberContainer('images/tiffany.png', 'Tiffany Young'),
                          memberContainer('images/hyoyeon.png', 'Hyo'),
                          memberContainer('images/yuri.png', 'Kwon Yuri'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          memberContainer('images/sooyoung.png', 'SooYoung'),
                          memberContainer('images/yoona.png', 'Yoona'),
                          memberContainer('images/seohyun.png', 'Seohyun'),
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
      ),
    );
  }

  // Function to create a member container
  Widget memberContainer(String imagePath, String name) {
    return Column(
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8.0), // Space between the image and text
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}

class SNSDicePage extends StatefulWidget {
  const SNSDicePage({super.key});

  @override
  SNSDicePageState createState() => SNSDicePageState();
}

class SNSDicePageState extends State<SNSDicePage> {
  int leftMemberIndex = 1;
  int rightMemberIndex = 1;

  void changeMemberFaces() {
    setState(() {
      leftMemberIndex = Random().nextInt(9) + 1; // 9 members
      rightMemberIndex = Random().nextInt(9) + 1; // 9 members
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/igab$leftMemberIndex.png',
              ),
              onPressed: () {
                changeMemberFaces();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/igab$rightMemberIndex.png',
              ),
              onPressed: () {
                changeMemberFaces();
              },
            ),
          ),
        ],
      ),
    );
  }
}