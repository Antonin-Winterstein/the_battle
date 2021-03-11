import 'package:flutter/material.dart';
import 'package:thebattle/pages/AllCharactersPage.dart';
import 'package:thebattle/models/Player.dart';
import 'package:thebattle/pages/TeamPage.dart';
import 'package:thebattle/pages/TeamCustomPage.dart';

class TheBattleApp extends StatefulWidget {
  @override
  _TheBattleAppState createState() => _TheBattleAppState();
}

class _TheBattleAppState extends State<TheBattleApp> {
  final Player _player = Player("uuid", "John", "Doe", "john@doe.com", 1);

  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  
  Widget _checkRoute(context, route) {
    if (_player.team.validated) {
      // return TeamCustomPage(player: _player);
    }
    else {
      switch (route) {
        case AllCharactersPage.routeName:
          return AllCharactersPage(player: _player);
          break;
        case TeamPage.routeName:
          return TeamPage(player: _player);
          break;
        // case TeamCustomPage.routeName:
        //   return TeamCustomPage(player: _player);
        //   break;
        default:
          return AllCharactersPage(player: _player);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THE BATTLE',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // fontFamily: 'Knewave',
      ),
      routes: {
        AllCharactersPage.routeName: (context) => _checkRoute(context, AllCharactersPage.routeName),
        TeamPage.routeName: (context) => _checkRoute(context, TeamPage.routeName),
        // TeamCustomPage.routeName: (context) => _checkRoute(context, TeamCustomPage.routeName),
      },
      // home: AllCharactersPage(),
    );
  }
}