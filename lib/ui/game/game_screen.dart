
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/game_controller.dart';
import '../../controllers/player_controller.dart';
import '../../utils/color_res.dart';
import 'game_board.dart';
import 'game_detail_board.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack.withOpacity(.8),
      body: Consumer2<GameController, PlayerController>(
        builder: (_, game, player, Widget? child) {
          return Column(
            children: [
              GameDetailBoard(playerController: player,),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GameBoard(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
