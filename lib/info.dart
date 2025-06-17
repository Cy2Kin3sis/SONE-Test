import 'package:flutter/material.dart';

void memberInfo(BuildContext context, int memberId) {
  String name = '';
  String fullName = '';
  String birthdate = '';
  String position = '';
  String description = '';

  switch (memberId) {
    case 1:
      name = 'Taeyeon';
      fullName = 'Kim Tae-yeon';
      birthdate = 'March 9, 1989';
      position = 'Leader; Main Vocalist';
      description = 'Leader and main vocalist of Girls\' Generation. Also a successful soloist.';
      break;
    case 2:
      name = 'Jessica';
      fullName = 'Jessica Sooyeon Jung / Jung Soo-yeon';
      birthdate = 'April 18, 1989';
      position = 'Main Vocalist';
      description = 'Former member who left the group in 2014. Now runs a fashion business.';
      break;
    case 3:
      name = 'Sunny';
      fullName = 'Susan Soonkyu Lee / Lee Soon-kyu';
      birthdate = 'May 15, 1989';
      position = 'Lead Vocalist; Sub-Rapper';
      description = 'Niece of SM Entertainment\'s founder. Known for \'aegyo\' expressions.';
      break;
    case 4:
      name = 'Tiffany Young';
      fullName = 'Stephanie Young Hwang / Hwang Mi-young';
      birthdate = 'August 1, 1989';
      position = 'Lead Vocalist; Sub-Rapper';
      description = 'Had a brief solo career outside of K-Pop';
      break;
    case 5:
      name = 'Hyo';
      fullName = 'Kim Hyo-yeon';
      birthdate = 'September 22, 1989';
      position = 'Main Dancer; Main Rapper; Sub-Vocalist';
      description = 'Nicknamed \'Dancing Queen\' and now a DJ under the name HYO.';
      break;
    case 6:
      name = 'Kwon Yuri';
      fullName = 'Kwon Yu-ri';
      birthdate = 'December 5, 1989';
      position = 'Main Dancer / Lead Rapper / Sub-Vocalist';
      description = 'Also known as an actress and for her cooking.';
      break;
    case 7:
      name = 'SooYoung';
      fullName = 'Choi Soo-young';
      birthdate = 'February 10, 1990';
      position = 'Lead Dancer; Lead Rapper; Sub-Vocalist';
      description = 'Started her career in Japan and now an actress who recently made her Hollywood debut with \'Ballerina\',';
      break;
    case 8:
      name = 'Yoona';
      fullName = 'Im Yoon-ah / Lim Yoona';
      birthdate = 'May 30, 1990';
      position = 'Lead Dancer; Lead Rapper; Sub-Vocalist; Center; Visual';
      description = 'Face of the group and successful actress who is also known as one of the most beautiful faces in South Korea';
      break;
    case 9:
      name = 'Seohyun';
      fullName = 'Seo Ju-hyun';
      birthdate = 'June 28, 1991';
      position = 'Lead Vocalist; Maknae';
      description = 'Youngest member and actress who also participated in musical plays';
      break;
    default:
      name = 'Unknown';
      description = 'No information available.';
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.pink[100], // Light/carnation pink
        title: Text(name, style: const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
        content: Text('Name: $fullName\nBorn: $birthdate\nPosition: $position\n$description', style: const TextStyle(color: Colors.pink)),
        actions: <Widget>[
          TextButton(child: const Text('Close', style: TextStyle(color: Colors.pink)), onPressed: () => Navigator.of(context).pop()),
        ],
      );
    },
  );
}
