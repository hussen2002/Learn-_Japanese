import 'package:flutter/material.dart';
import 'package:toku/components/container_item.dart';
import 'package:toku/models/number.dart';

final List<Number> numberList = [
  Number(
    image: 'assets/images/colors/color_black.png',
    text1: 'Burakku',
    text2: 'black',
    pref: 'assets/sounds/colors/',
    sound: 'black.wav',
  ),
  Number(
    image: 'assets/images/colors/color_brown.png',
    text1: 'Chairo',
    text2: 'brown',
    pref: 'assets/sounds/colors/',
    sound: 'brown.wav',
  ),
  Number(
    image: 'assets/images/colors/color_dusty_yellow.png',
    text1: 'Hokori ppoi kiiro',
    text2: 'dusty yellow',
    pref: 'assets/sounds/colors/',
    sound: 'dusty yellow.wav',
  ),
  Number(
    image: 'assets/images/colors/color_gray.png',
    text1: 'Gure',
    text2: 'gray',
    pref: 'assets/sounds/colors/',
    sound: 'gray.wav',
  ),
  Number(
    image: 'assets/images/colors/color_green.png',
    text1: 'Midori',
    text2: 'green',
    pref: 'assets/sounds/colors/',
    sound: 'green.wav',
  ),
  Number(
    image: 'assets/images/colors/color_red.png',
    text1: 'Aka',
    text2: 'red',
    pref: 'assets/sounds/colors/',
    sound: 'red.wav',
  ),
  Number(
    image: 'assets/images/colors/color_white.png',
    text1: 'shirori',
    text2: 'white',
    pref: 'assets/sounds/colors/',
    sound: 'white.wav',
  ),
  Number(
    image: 'assets/images/colors/yellow.png',
    text1: 'Kiiro',
    text2: 'yellow',
    pref: 'assets/sounds/colors/',
    sound: 'yellow.wav',
  ),
];

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor: Color(0xFF46322B),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ContainerItem(
              number: numberList[index],
              color: Colors.purple,
            );
          },
          itemCount: numberList.length,
        ));
  }
}
