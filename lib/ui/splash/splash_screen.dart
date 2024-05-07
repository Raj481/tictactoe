
import 'package:abrtictactoe/utils/image_res.dart';
import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';
import '../../route/router.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../../style/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 3),(){
        Navigator.of(context).pushReplacementNamed("/${AppRouter.home}");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryBlack.withOpacity(.8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * .2,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringRes.appName.toUpperCase(),
                style: AppStyle.appLogoStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
