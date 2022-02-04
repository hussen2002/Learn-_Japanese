import 'package:flutter/material.dart';
import 'package:toku/components/container_item.dart';
import 'package:toku/models/number.dart';

final List<Number> numberList = [
  Number(
    image: 'assets/images/numbers/number_one.png',
    text1: 'ichi',
    text2: 'one',
    pref: 'assets/sounds/numbers/',
    sound: 'number_one_sound.mp3',
  ),
  Number(
      image: 'assets/images/numbers/number_two.png',
      text1: 'Ni',
      text2: 'two',
      pref: 'assets/sounds/numbers/',
      sound: 'number_two_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_three.png',
      text1: 'San',
      text2: 'three',
      pref: 'assets/sounds/numbers/',
      sound: 'number_three_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_four.png',
      text1: 'Shi',
      text2: 'four',
      pref: 'assets/sounds/numbers/',
      sound: 'number_four_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_five.png',
      text1: 'Go',
      text2: 'five',
      pref: 'assets/sounds/numbers/',
      sound: 'number_five_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_six.png',
      text1: 'Roku',
      text2: 'six',
      pref: 'assets/sounds/numbers/',
      sound: 'number_six_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_seven.png',
      text1: 'sebun',
      text2: 'seven',
      pref: 'assets/sounds/numbers/',
      sound: 'number_seven_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_eight.png',
      text1: 'hachi',
      text2: 'eight',
      pref: 'assets/sounds/numbers/',
      sound: 'number_eight_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_nine.png',
      text1: 'Kyū',
      text2: 'nine',
      pref: 'assets/sounds/numbers/',
      sound: 'number_nine_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_ten.png',
      text1: 'Jū',
      text2: 'ten',
      pref: 'assets/sounds/numbers/',
      sound: 'number_ten_sound.mp3')
];

class MembersPage extends StatelessWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Members'),
          backgroundColor: Color(0xFF46322B),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ContainerItem(
              number: numberList[index],
              color: Colors.orange,
            );
          },
          itemCount: numberList.length,
        ));
  }
}
