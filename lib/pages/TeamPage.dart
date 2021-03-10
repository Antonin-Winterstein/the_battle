import 'package:flutter/material.dart';
import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Player.dart';
import 'package:thebattle/models/Team.dart';
import 'package:thebattle/pages/TeamCustomPage.dart';
// import 'package:thebattle/widgets/TeamMaster.dart';
// import 'package:thebattle/widgets/TheBattleNavigationBar.dart';
import 'package:thebattle/pages/AllCharactersPage.dart';

class TeamPage extends StatefulWidget {
  static const String routeName = "/team";
  static const int routeIndex = 1;

  final Player player;
  final Character newCharacter;

  TeamPage({Key key, this.player, this.newCharacter});
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  _TeamPageState();

  void _onCharacterRemoved(Character character) {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}