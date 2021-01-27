import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';

class CharacterPreview extends StatelessWidget {
  const CharacterPreview({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[400],
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage(character.imagePath()),
            width: 100,
          ),
        ),
        title: Text(
          character.name,
          style: TextStyle(
            fontFamily: 'Knewave', fontSize: 20, color: Colors.white,
          )
        ),
      ),
    );
  }
}