import 'dart:math';

import 'package:flutter/material.dart';

import 'formats.dart';
import 'info.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  Widget memberContainer(String imagePath, String name, VoidCallback onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
          ),
        ),
        const SizedBox(height: 8.0), // Space between the image and text
        Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.0),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  bool isMatch = false;

  void changeMemberFaces() => setState(() {
    leftMemberIndex = Random().nextInt(9) + 1;
    rightMemberIndex = Random().nextInt(9) + 1;
    if(leftMemberIndex == rightMemberIndex) {
      isMatch = true;
    } else {
      isMatch = false;
    }
  });

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.25;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(
            icon: const Icon(Icons.casino, color: Colors.pink),
            label: const Text('Roll'),
            onPressed: () => changeMemberFaces(),
            style: ElevatedButton.styleFrom(
              iconSize: 40,
              textStyle: const TextStyle(color: Colors.pink, fontSize: 36, fontFamily: 'Segoe Print'),
              foregroundColor: Colors.pink,
              backgroundColor: Colors.white,
            ),
          ),
          sbh(context, 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/igab$leftMemberIndex.png',
                width: size,
                height: size,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 20),
              Image.asset(
                'images/igab$rightMemberIndex.png',
                width: size,
                height: size,
                fit: BoxFit.cover,
              ),
            ],
          ),
          sbh(context, 4),
          // Reserve space for the text whether it's shown or not
          SizedBox(
            height: 30, // Adjust to match the height of the text
            child: isMatch
                ? Text('You got a match!', style: textStyle.copyWith(fontSize: 20))
                : const SizedBox.shrink(), // Empty widget
          ),
        ],
      ),
    );
  }
}
