import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/widgets/CharacterMaster.dart';
// import 'package:thebattle/widgets/CharacterDetails.dart';
import 'package:thebattle/data/characters.dart' as staticData;

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key}) : super(key: key);

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  List <Character> allCharacters;
  Character _selectedCharacter;

  _AllCharactersPageState() {
    allCharacters = staticData.characters;
  }

  void _onCharacterSelect(Character character) {
    setState(() {
      this._selectedCharacter = character;
    });
  }

  // Widget _getCharacterDetails() {
  //   if (this._selectedCharacter != null) {
  //     return CharacterDetails(character: this._selectedCharacter);
  //   }
  //   else {
  //     return Container();
  //   }
  // }

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
            // SizedBox(
            //   width: double.infinity,
            //   child: _getCharacterDetails(),
            // ),
            Expanded(
              child: CharacterMaster(
                characters: allCharacters, onSelected: this._onCharacterSelect
              ),
            )
          ],
        ),
      ),
    );
  }
}