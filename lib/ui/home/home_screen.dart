import 'package:abrtictactoe/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../../style/app_styles.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack.withOpacity(.8),
      body: Column(
        children: [
          CustomAppBar(
            title: Text(
              StringRes.home.toUpperCase(),
              style: AppStyle.headingStyle,
            ),
            trailing: [

              InkWell(
                onTap: () => GoRouter.of(context).push("/${AppRouter.settings}"),
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Icon(
                      Icons.settings,
                      color: ColorRes.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // upper section
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageRes.imgTicTacToe
                                  )
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .4,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringRes.welcome.toUpperCase(),
                          style: AppStyle.appLogoStyle,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * .1,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: StringRes.play.toUpperCase(),
                          onTap: () => GoRouter.of(context).push("/${AppRouter.playerScreen}"),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: StringRes.exit.toUpperCase(),
                          onTap: () {
                              SystemNavigator.pop();
                          },)
                      ],
                    ),
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }



}
