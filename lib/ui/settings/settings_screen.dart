
import 'package:abrtictactoe/utils/image_res.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
/// import custom package
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_container.dart';
import '../../controllers/settings_controller.dart';
import '../../style/app_styles.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {

    final settings = context.watch<SettingsController>();

    return Scaffold(
      backgroundColor: ColorRes.primaryBlack.withOpacity(.8),
      body: Column(
        children: [
          CustomAppBar(
            leading: InkWell(
              onTap: () => context.pop(),
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
              StringRes.settings.toUpperCase(),
              style: AppStyle.headingStyle,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10
            ),
          ),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 25, vertical: 25
              ),
              children: [
                CustomContainer(
                  constraints: const BoxConstraints(
                    minHeight: 45
                  ),
                  boxDecoration: BoxDecoration(
                    color: ColorRes.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 5
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              image: AssetImage(
                                  ImageRes.icVolumeWhite
                              ),
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(width: 10,),
                            Text(
                              StringRes.audio,
                              style: AppStyle.subHeadingStyle,
                            ),
                          ],
                        ),

                        ValueListenableBuilder<bool>(
                          valueListenable: settings.audioOn,
                          builder: (context, musicOn, child)
                          =>  Switch(
                              value: settings.audioOn.value,
                              onChanged: (value)=> settings.toggleAudioOn(),
                              activeColor: ColorRes.primaryBlack,
                              inactiveTrackColor: ColorRes.transparent,
                              inactiveThumbColor: ColorRes.greyMedium,
                              activeTrackColor: ColorRes.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomContainer(
                  constraints: const BoxConstraints(
                    minHeight: 45
                  ),
                  boxDecoration: BoxDecoration(
                    color: ColorRes.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 5
                  ),
                  child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(
                                image: AssetImage(
                                    ImageRes.icInfoWhite
                                ),
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                StringRes.about,
                                style: AppStyle.subHeadingStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomContainer(
                  constraints: const BoxConstraints(
                    minHeight: 45
                  ),
                  boxDecoration: BoxDecoration(
                    color: ColorRes.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 5
                  ),
                  child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(
                                image: AssetImage(
                                    ImageRes.icTermsAndConditionsWhite
                                ),
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                StringRes.termsAndConditions,
                                style: AppStyle.subHeadingStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
             "Copyright @ RajeshRegar",
             style: AppStyle.copyrightStyle,
           )
          ],
        ),
      ),
    );
  }
}
