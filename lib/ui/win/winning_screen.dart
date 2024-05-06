
import 'package:abrtictactoe/controllers/game_controller.dart';
import 'package:abrtictactoe/controllers/player_controller.dart';
import 'package:abrtictactoe/route/router.dart';
import 'package:abrtictactoe/style/app_styles.dart';
import 'package:abrtictactoe/utils/image_res.dart';
import 'package:abrtictactoe/widgets/custom_button.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../utils/color_res.dart';
import '../../utils/string_res.dart';

class WinningScreen extends StatefulWidget {
  final String winner;
  final String looser;
  const WinningScreen({
    super.key,
    required this.winner,
    required this.looser
  });

  @override
  State<WinningScreen> createState() => _WinningScreenState();
}

class _WinningScreenState extends State<WinningScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return PopScope(
        child: Scaffold(
          backgroundColor: ColorRes.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: ColorRes.primaryBlack.withOpacity(.6),
                    borderRadius: BorderRadius.circular(15)
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: width * .05,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: height * .05
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image(
                            image: AssetImage(
                                ImageRes.icWinner
                            ),
                            height: height * .1,
                            width: width * .3,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                StringRes.winner.toUpperCase(),
                                style: AppStyle.winnerHeadingStyle,
                              ),
                              Text(
                                widget.winner,
                                style: AppStyle.winnerTextStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                StringRes.looser.toUpperCase(),
                                style: AppStyle.looserHeadingStyle,
                              ),
                              Text(
                                widget.winner,
                                style: AppStyle.winnerTextStyle,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: StringRes.home.toUpperCase(),
                          onTap: () {
                            context.read<PlayerController>().reset();
                            context.read<GameController>().reset();
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                "/${AppRouter.home}", (route) => false);
                          },)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
