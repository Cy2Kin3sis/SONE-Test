import 'package:flutter/material.dart';

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
