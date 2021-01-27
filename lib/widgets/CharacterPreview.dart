import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';

class CharacterPreview extends StatefulWidget {
  const CharacterPreview({Key key, this.character, this.onSelected}) : super(key: key);

  final Character character;
  final Function onSelected;

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  bool _selected = false;

  _CharacterPreviewState();

  Color _getColorAccordingToSelected() {
    return (_selected) ? Colors.red[300] : Colors.red[400];
  }

  void _onTap() {
    setState(() {
      _selected = (_selected) ? false : true;
    });

    this.widget.onSelected(this.widget.character);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getColorAccordingToSelected(),
      child: ListTile(
        onTap: () {
          _onTap();
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