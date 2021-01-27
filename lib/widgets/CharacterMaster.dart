import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/widgets/CharacterPreview.dart';

class CharacterMaster extends StatelessWidget {
  const CharacterMaster({Key key, this.characters}) : super(key: key);

  final List <Character> characters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,

      itemBuilder: (BuildContext context, int index) {
        if (index != null) {
          final Character character = characters[index];

          return CharacterPreview(character: character);
        }
        else {
          return Container();
        }
      },
    );
  }
}