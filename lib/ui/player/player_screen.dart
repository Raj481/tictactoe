
import 'package:abrtictactoe/controllers/player_controller.dart';
import 'package:abrtictactoe/models/player.dart';
import 'package:abrtictactoe/route/router.dart';
import 'package:abrtictactoe/utils/custom_ui.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// import custom package
import '../../style/app_styles.dart';
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/custom_text_field.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack.withOpacity(.8),
      body: Consumer<PlayerController>(
        builder: (BuildContext _, PlayerController value, Widget? child) {
          return Column(
            children: [
              CustomAppBar(
                leading: InkWell(
                  onTap: () => Navigator.pop(context),
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorRes.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  StringRes.detail.toUpperCase(),
                  style: AppStyle.headingStyle,
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                ),
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      if(value.getPlayer.isNotEmpty)
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .3,
                          child:  ListView.builder(
                              itemCount: value.getPlayer.length,
                              itemBuilder: (_, index) {
                                return CustomContainer(
                                  constraints: const BoxConstraints(
                                      minHeight: 45
                                  ),
                                  boxDecoration: BoxDecoration(
                                      color: ColorRes.white.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: MediaQuery.of(context).size.width * .1
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                ImageRes.icAthleteWhite
                                            ),
                                            height: 25,
                                            width: 25,
                                          ),
                                          const SizedBox(width: 15,),
                                          Flexible(
                                            child: Text(
                                              value.getPlayer[index].name!,
                                              style: AppStyle.subHeadingStyle,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                value.getPlayer[index].icon!
                                            ),
                                            height: 18,
                                            width: 18,
                                          ),
                                          const SizedBox(width: 8,),
                                          InkWell(
                                            onTap: () => value.removePlayer(index),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Icon(
                                                Icons.delete,
                                                color: ColorRes.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      if(value.getPlayer.length < 2)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              title: StringRes.addPlayer.toUpperCase(),
                              onTap: () => showInfoDialog(),
                            )
                          ],
                        ),
                      if(value.getPlayer.isNotEmpty)
                       ...[
                         const SizedBox(height: 15,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CustomButton(
                               title: StringRes.start.toUpperCase(),
                               onTap: () => Navigator.of(context).pushNamed("/${AppRouter.gameScreen}")
                               ,)
                           ],
                         ),
                       ]
                    ],
                  )
              )
            ],
          );
        },
      ),
    );
  }

  
  showInfoDialog(){
      showGeneralDialog(
        context: context,
          barrierLabel: "Barrier",
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.5),
        pageBuilder: (_,___, __){

          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;
          return Material(
            color: ColorRes.transparent,
            child: Consumer<PlayerController>(
              builder: (_, controller , child){
                return Center(
                  child: Container(
                    height:  height * .5,
                    width:  width * .8,
                    decoration: BoxDecoration(
                        color: ColorRes.primaryBlack,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15
                          ),
                          decoration: BoxDecoration(
                              color: ColorRes.white.withOpacity(.3),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.resetPlayer();
                                  Navigator.pop(context);
                                },
                                borderRadius: BorderRadius.circular(10),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: ColorRes.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                              Text(
                                StringRes.player.toUpperCase(),
                                style: AppStyle.headingStyle,
                              ),

                              const SizedBox(
                                width: 25,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${StringRes.player}:",
                                        style: AppStyle.textSecondaryHeadingStyle,
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomTextField(
                                      controller: controller.textController,
                                      hintText: StringRes.enterPlayerName,
                                      hintStyle: AppStyle.hintStyle,
                                      textStyle: AppStyle.textStyle,
                                      boxDecoration: BoxDecoration(
                                          color: ColorRes.white.withOpacity(.1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      onChanged: (value) => controller.setPlayerName(value),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${StringRes.selectIcon}:",
                                        style: AppStyle.textSecondaryHeadingStyle,
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: controller.playerIcon.contains(ImageRes.icLetterO)
                                              ? ColorRes.wooden.withOpacity(.3)
                                              : ColorRes.white.withOpacity(.1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: InkWell(
                                        onTap: () =>  controller.setPlayerIcon(ImageRes.icLetterO),
                                        borderRadius: BorderRadius.circular(10),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                ImageRes.icLetterO
                                            ),
                                            width: width * .2,
                                            height: height * .1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: controller.playerIcon.contains(ImageRes.icLetterX)
                                              ? ColorRes.wooden.withOpacity(.3)
                                              : ColorRes.white.withOpacity(.1),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: InkWell(
                                        onTap: () =>  controller.setPlayerIcon(ImageRes.icLetterX),
                                        borderRadius: BorderRadius.circular(10),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage(
                                                ImageRes.icLetterX
                                            ),
                                            width: width * .2,
                                            height: height * .1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              height: 45,
                              title: StringRes.done.toUpperCase(),
                              onTap: () {

                                if(controller.playerName.trim().isEmpty) {
                                  CustomUi.showToast(context, StringRes.pleaseEnterPlayerName);
                                  return;
                                }

                                if(controller.playerIcon.trim().isEmpty) {
                                  CustomUi.showToast(context, StringRes.pleaseSelectAIcon);
                                  return;
                                }

                                if(controller.getPlayer.isNotEmpty){
                                  if(controller.getPlayer.first.icon!.contains(controller.playerIcon)){
                                    CustomUi.showToast(context, StringRes.msgFollowingIconAlreadySelected);
                                    return;
                                  }
                                }

                                controller.addPlayer(
                                    Player(
                                        name: controller.playerName,
                                        icon: controller.playerIcon
                                    )
                                );
                                controller.resetPlayer();
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
    );
  }

}
