import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Phrase.dart';
import 'package:toku/models/number.dart';

class ContainerItem extends StatelessWidget {
  final Number number;
  Color? color;

  ContainerItem({required this.number, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(
                number.image!,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.text1!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.text2!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 10,
          ),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: number.pref!);
              player.play(number.sound!);
            },
            iconSize: 32,
            icon: Icon(
              Icons.play_arrow,
            ),
            color: Colors.white,
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  PhraseItem({required this.phrase});
  Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blueAccent,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jbName!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  phrase.enName!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 10,
          ),
          IconButton(
            onPressed: () {
              print('sd');
              AudioCache player = AudioCache(prefix: 'assets/sounds/phrases/');
              player.play(phrase.sound!);
            },
            iconSize: 32,
            icon: Icon(
              Icons.play_arrow,
            ),
            color: Colors.white,
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
