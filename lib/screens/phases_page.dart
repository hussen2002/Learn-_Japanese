import 'package:flutter/material.dart';
import 'package:toku/components/container_item.dart';
import 'package:toku/models/Phrase.dart';

final List<Phrase> phraseList = [
  Phrase(
   sound: 'dont_forget_to_subscribe.wav',
   jbName: 'Kōdoku suru koto o wasurenaide kudasai',
   enName: 'don\'t forget to subscribe'
  ),
 Phrase(
   sound: 'i_love_programming.wav',
   jbName: 'Watashi wa puroguramingu ga daisukidesu',
   enName: 'i love programming'
  ),
 Phrase(
   sound: 'programming_is_easy.wav',
   jbName: 'Puroguramingu wa kantandesu',
   enName: 'programming is easy'
  ),
 Phrase(
   sound: 'where_are_you_going.wav',
   jbName: 'Doko ni iku no',
   enName: 'where are you going'
  ),
 Phrase(
   sound: 'what_is_your_name.wav',
   jbName: 'Namae wa nandesu ka',
   enName: 'what is your name'
  ),
 Phrase(
   sound: 'i_love_anime.wav',
   jbName: 'Watashi wa anime ga daisukidesu',
   enName: 'i love anime'
  ),
 Phrase(
   sound: 'what_is_your_name.wav',
   jbName: 'Namae wa nandesu ka',
   enName: 'what is your name'
  ),
 Phrase(
   sound: 'how_are_you_feeling.wav',
   jbName: 'Go kibun wa ikagadesu ka',
   enName: 'how are you feeling'
  ),
 Phrase(
   sound: 'yes_im_coming.wav',
   jbName: 'Hai Imu kuru',
   enName: 'yes im coming'
  ),
];

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phrases'),
          backgroundColor: Color(0xFF46322B),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phraseList[index],
            );
            
          },
          itemCount: phraseList.length,
        ));
  }
}
