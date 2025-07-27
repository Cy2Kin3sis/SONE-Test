import 'package:flutter/material.dart';
import 'contents.dart';

class GGView extends StatefulWidget {
  const GGView({super.key});

  @override
  GGViewState createState() => GGViewState();
}
class GGViewState extends State<GGView> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3, // Three tabs/pages
    child: Scaffold(
      appBar: AppBar(
        title: const Text("Girls' Generation"),
        backgroundColor: Colors.pink,
        bottom: const TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.groups, color: Colors.white), child: Text("Members", style: TextStyle(color: Colors.white))),
            Tab(icon: Icon(Icons.casino, color: Colors.white), child: Text("SNSDice", style: TextStyle(color: Colors.white))),
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
