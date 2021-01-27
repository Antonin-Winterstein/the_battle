import 'package:thebattle/models/Character.dart';
import 'package:thebattle/models/Player.dart';

class Team {
  final String uuid;
  final Player player;
  List <Character> characters;

  Team(this.uuid, this.player);
}