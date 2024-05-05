
import 'package:flutter/material.dart';

import '../../controllers/player_controller.dart';
import '../../style/app_styles.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';

class GameDetailBoard extends StatelessWidget {
  final PlayerController playerController;
  const GameDetailBoard({
    super.key,
    required this.playerController
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 15, vertical: 15
      ),
      decoration: BoxDecoration(
        color: ColorRes.white.withOpacity(.1),
        border: Border(
          bottom: BorderSide(
            color: ColorRes.white.withOpacity(.5),
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringRes.player,
                      textAlign: TextAlign.end,
                      style: AppStyle.textSecondaryHeadingStyle,
                    ),
                    // Text(
                    //   StringRes.score,
                    //   textAlign: TextAlign.end,
                    //   style: AppStyle.textSecondaryHeadingStyle,
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        playerController.getPlayer.first.name!,
                        style: AppStyle.textHeadingStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // Text(
                    //   playerController.getPlayer.first.score.toString(),
                    //   style: AppStyle.textHeadingStyle,
                    // ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10,),
          VerticalDivider(
            color: ColorRes.white,
            thickness: 1,
            width: 1,
          ),
          const SizedBox(width: 10,),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text(
                    //   StringRes.score,
                    //   textAlign: TextAlign.end,
                    //   style: AppStyle.textSecondaryHeadingStyle,
                    // ),
                    Text(
                      StringRes.player,
                      textAlign: TextAlign.end,
                      style: AppStyle.textSecondaryHeadingStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text(
                    //   playerController.getPlayer[1].score.toString(),
                    //   style: AppStyle.textHeadingStyle,
                    // ),
                    Flexible(
                      child: Text(
                        playerController.getPlayer[1].name!,
                        style: AppStyle.textHeadingStyle,
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
