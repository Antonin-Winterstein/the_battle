import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  character.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Knewave', fontSize: 20, color: Colors.red
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage(character.imagePath()),
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('strength : ${character.strength.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                Text('speed : ${character.speed.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                Text('cleverness : ${character.cleverness.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
                Text('intelligence : ${character.intelligence.value}',
                  style: TextStyle(
                    fontFamily: 'Knewave',
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

  