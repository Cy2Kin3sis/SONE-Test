import 'package:flutter/material.dart';
import 'contents.dart';
import 'formats.dart';

class GGView extends StatefulWidget {
  const GGView({super.key});

  @override
  GGViewState createState() => GGViewState();
}
class GGViewState extends State<GGView> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2, // Three tabs/pages
    child: Scaffold(
      appBar: AppBar(
        title: const Text("Girls' Generation"),
        backgroundColor: Colors.pink,
        bottom: const TabBar(
          indicatorColor: white,
          tabs: [
            Tab(icon: Icon(Icons.groups, color: white), child: Text("Members", style: TextStyle(color: white))),
            Tab(icon: Icon(Icons.casino, color: white), child: Text("SNSDice", style: TextStyle(color: white))),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          MembersPage(),
          SNSDicePage(),
        ],
      ),
    ),
  );
}
