import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/widgets/CharacterMaster.dart';
import 'package:thebattle/data/characters.dart' as staticData;

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key}) : super(key: key);

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  List <Character> allCharacters;

  _AllCharactersPageState() {
    allCharacters = staticData.characters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/the-battle-logo.png'),
              width: 100,
            )
          ],
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: CharacterMaster(characters: allCharacters))
          ],
        ),
      ),
    );
  }
}