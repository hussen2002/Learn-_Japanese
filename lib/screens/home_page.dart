import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/members_page.dart';
import 'package:toku/screens/phases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko'),
        backgroundColor: Color(0xFF46322B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Member',
            color: Colors.orange,
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MembersPage();
              }));
            },
          ),
          Category(
            text: 'Family Members',
            color: Colors.green,
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMemberPage();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: Colors.purple,
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorPage();
              }));
            },
          ),
          Category(
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
