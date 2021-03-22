import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Team.dart';

class TeamCharacterPreview extends StatefulWidget {
  const TeamCharacterPreview({Key key, this.character, this.team, this.onSelected}) : super(key: key);

  final Character character;
  final Team team;
  final Function onSelected;

  // final bool visited;

  @override
  _TeamCharacterPreviewState createState() => _TeamCharacterPreviewState();
}

class _TeamCharacterPreviewState extends State<TeamCharacterPreview> {
  _TeamCharacterPreviewState();

  Color _getColorAccordingToSelected() {

    if (widget.character.autoSelected == true) {
      return Colors.green[900];
    }
    else {
      return Colors.greenAccent[400];
    }
  }

  Future<void> _showAlert(String title, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK :('),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }

  void _removeCharacterFromTeam() {
    if (widget.character.autoSelected) {
      _showAlert('Error', 'You can\'t remove an autoselected character !');
    }
    else {
      print('selected donc possible d\'enlever !');
      // print(this.widget.character.name);
      // widget.onSelected(widget.character);
      this.widget.onSelected(this.widget.character);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getColorAccordingToSelected(),
      child: ListTile(
        onTap: () {
          _removeCharacterFromTeam();
        },
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage(widget.character.imagePath()),
            width: 100,
          ),
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(
            fontFamily: 'Knewave', fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}