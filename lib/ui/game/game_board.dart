

import 'package:abrtictactoe/controllers/game_controller.dart';
import 'package:abrtictactoe/controllers/player_controller.dart';
import 'package:abrtictactoe/ui/win/winning_screen.dart';
import 'package:abrtictactoe/utils/audio_res.dart';
import 'package:abrtictactoe/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../audio/audio_controller.dart';
import '../../utils/color_res.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {

    final boardHeight = MediaQuery.of(context).size.height * .4;
    final boardWidth = MediaQuery.of(context).size.width * .9;

    return Consumer2<GameController, PlayerController>(
      builder: (_, game, player,child) {
        return Container(
          height: boardHeight,
          width: boardWidth,
          decoration: BoxDecoration(
            // color: ColorRes.wooden.withOpacity(.5),
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.5, 1.0],
                colors: [
                  Color(0xFFE7C39C),
                  Color(0xFFCC7722),
                  Color(0xFFE7C39C),
                ],
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(0,0, game: game, player: player),

                      child: (game.board[0][0].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[0][0]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(0,1, game: game, player: player),
                      child: (game.board[0][1].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[0][1]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(0,2, game: game, player: player),
                      child: (game.board[0][2].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[0][2]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(1,0, game: game, player: player),
                      child: (game.board[1][0].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[1][0]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(1,1, game: game, player: player),
                      child: (game.board[1][1].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[1][1]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(1,2, game: game, player: player),
                      child: (game.board[1][2].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[1][2]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(2,0, game: game, player: player),
                      child: (game.board[2][0].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[2][0]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(2,1, game: game, player: player),
                      child: (game.board[2][1].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[2][1]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                  CustomContainer(
                    height: boardHeight * .3,
                    width: boardWidth * .3,
                    constraints: BoxConstraints(
                        minHeight: boardHeight * .3,
                        maxWidth: boardWidth * .3
                    ),
                    boxDecoration: BoxDecoration(
                      color: ColorRes.black.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () => onCardTap(2,2, game: game, player: player),
                      child: (game.board[2][2].trim().isNotEmpty)
                          ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image(
                            image: AssetImage(
                                game.board[2][2]
                            ),
                          ),
                        ),
                      )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  onCardTap(int row, int col,{
    required GameController game,
    required PlayerController player}) {
    final audioController = context.read<AudioController>();
    if(!game.isValidMove(row, col)){
      audioController.playAudio(AudioRes.beep);
      return;
    }

    game.setPlayerList(player.getPlayer);
    game.makeMove(row, col);
    var isWin = game.checkWinner();
    if(isWin) {
      audioController.playAudio(AudioRes.playful_casino_2);
      showWinnerDialog(game.currentPlayer!.name ?? "");
    }
  }

  showWinnerDialog(String winnerName){
    showGeneralDialog(
        context: context,
        barrierLabel: "Barrier",
        barrierDismissible: false,
        barrierColor: ColorRes.black.withOpacity(.3),
        pageBuilder: (_,___, __){
          return WinningScreen(winner: winnerName,);
        }
    );
  }
}
