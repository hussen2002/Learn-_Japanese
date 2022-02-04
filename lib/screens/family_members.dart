import 'package:flutter/material.dart';
import 'package:toku/components/container_item.dart';
import 'package:toku/models/number.dart';

class FamilyMemberPage extends StatelessWidget {
  FamilyMemberPage({Key? key}) : super(key: key);
  final List<Number> numberList = [
    Number(
      image: 'assets/images/family_members/family_father.png',
      text1: 'Chichioya',
      text2: 'father',
      pref: 'assets/sounds/family_members/',
      sound: 'father.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_daughter.png',
      text1: 'Musume',
      text2: 'daughter',
      pref: 'assets/sounds/family_members/',
      sound: 'daughter.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_grandfather.png',
      text1: 'Ojisan',
      text2: 'Grand Father',
      pref: 'assets/sounds/family_members/',
      sound: 'grand father.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_mother.png',
      text1: 'Hahaoya',
      text2: 'mother',
      pref: 'assets/sounds/family_members/',
      sound: 'mother.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_grandmother.png',
      text1: 'Sobo',
      text2: 'grand mother',
      pref: 'assets/sounds/family_members/',
      sound: 'grand mother.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_older_brother.png',
      text1: 'Nisan',
      text2: 'older brother',
      pref: 'assets/sounds/family_members/',
      sound: 'older bother.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_older_sister.png',
      text1: 'Ane',
      text2: 'older sister',
      pref: 'assets/sounds/family_members/',
      sound: 'older sister.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_son.png',
      text1: 'Musuko',
      text2: 'son',
      pref: 'assets/sounds/family_members/',
      sound: 'son.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_brother.png',
      text1: 'Otōto',
      text2: 'younger brother',
      pref: 'assets/sounds/family_members/',
      sound: 'younger brohter.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_sister.png',
      text1: 'Imōto',
      text2: 'younger sister',
      pref: 'assets/sounds/family_members/',
      sound: 'younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xFF46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ContainerItem(
            number: numberList[index],
            color: Colors.green,
          );
        },
        itemCount: numberList.length,
      ),
    );
  }
}
