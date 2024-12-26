import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiPageApp(),
    );
  }
}

class MultiPageApp extends StatefulWidget {
  @override
  _MultiPageAppState createState() => _MultiPageAppState();
}

class _MultiPageAppState extends State<MultiPageApp> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
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
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              // Page 1: Cover
              Container(
                color: Colors.pinkAccent,
                child: Center(
                  child: Text(
                    "Welcome Page",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe Print',
                    ),
                  ),
                ),
              ),
              // Page 2: Members Grid
              Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.pink,
                  title: Text(
                    "Girls' Generation Members",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
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
                  title: Text("Sonyeo Si-dice (Dice Generation)"),
                  backgroundColor: Colors.pink,
                ),
                backgroundColor: Colors.pinkAccent,
                body: SNSDicePage(),
              ),
            ],
          ),
          Positioned(
            left: 10,
            top: MediaQuery.of(context).size.height / 2 - 30,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: _previousPage,
            ),
          ),
          Positioned(
            right: 10,
            top: MediaQuery.of(context).size.height / 2 - 30,
            child: IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.white),
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
        SizedBox(height: 8.0), // Space between the image and text
        Text(
          name,
          style: TextStyle(
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
  @override
  _SNSDicePageState createState() => _SNSDicePageState();
}

class _SNSDicePageState extends State<SNSDicePage> {
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
