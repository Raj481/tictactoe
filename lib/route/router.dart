
import 'package:abrtictactoe/ui/home/home_screen.dart';
import 'package:abrtictactoe/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/game/game_screen.dart';
import '../ui/player/player_screen.dart';
import '../ui/settings/settings_screen.dart';
import '../ui/win/winning_screen.dart';

class AppRouter {


  /// The router describes the game's navigational hierarchy, from the main
  /// screen through settings screens all the way to each individual level.
  static final router = GoRouter(
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
            path: settings,
            builder: (context, state) =>
                SettingsScreen(key: Key(settings)),
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
  );

  /// declare path constants
  static get splash => "/";
  static get home => "home";
  static get settings => "settings";
  static get gameScreen => "gameScreen";
  static get playerScreen => "playerScreen";
  static get winningScreen => "winningScreen";


}