import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';

class CharacterPreview extends StatefulWidget {
  const CharacterPreview({Key key, this.character, this.onSelected, this.visited}) : super(key: key);

  final Character character;
  final Function onSelected;

  final bool visited;

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  _CharacterPreviewState();

  Color _getColorAccordingToSelected() {
    return (widget.visited) ? Colors.red[300] : Colors.red[400];
  }

  void _onTap() {
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