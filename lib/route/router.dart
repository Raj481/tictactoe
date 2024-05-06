
import 'package:abrtictactoe/ui/home/home_screen.dart';
import 'package:abrtictactoe/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

import '../ui/game/game_screen.dart';
import '../ui/player/player_screen.dart';
import '../ui/settings/settings_screen.dart';
import '../ui/win/winning_screen.dart';

class AppRouter {

  /// The router describes the game's navigational hierarchy, from the main
  /// screen through settings screens all the way to each individual level.
  /*static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => SplashScreen(key: Key(splash),),
        routes: [
          GoRoute(
            path: home,
            builder: (context, state) =>
             HomeScreen(key: Key(home)),
          ),
          GoRoute(
            path: appSettings,
            builder: (context, state) =>
                SettingsScreen(key: Key(appSettings)),
          ),
          GoRoute(
            path: gameScreen,
            builder: (context, state) =>
                GameScreen(key: Key(gameScreen)),
          ),
          GoRoute(
            path: playerScreen,
            builder: (context, state) =>
                PlayerScreen(key: Key(playerScreen)),
          ),
          GoRoute(
            path: winningScreen,
            builder: (context, state) =>
                WinningScreen(key: Key(winningScreen), winner: '',),
          ),
        ],
      ),
    ],
  );*/
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen(key: Key(splash),));
      case '/$home':
        return MaterialPageRoute(builder: (_) => const HomeScreen(key: Key(home)));
      case '/$appSettings':
        return MaterialPageRoute(builder: (_) => const SettingsScreen(key: Key(appSettings)));
      case '/$gameScreen':
        return MaterialPageRoute(builder: (_) => const GameScreen(key: Key(gameScreen)));
      case '/$playerScreen':
        return MaterialPageRoute(builder: (_) => const PlayerScreen(key: Key(playerScreen)));
      case '/$winningScreen':
        return MaterialPageRoute(builder: (_) => const WinningScreen(key: Key(winningScreen), winner: '',),);
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            )
        );
    }
  }

  /// declare path constants
  static const String splash = "/";
  static const String home = "home";
  static const String appSettings = "settings";
  static const String gameScreen = "gameScreen";
  static const String playerScreen = "playerScreen";
  static const String winningScreen = "winningScreen";

}