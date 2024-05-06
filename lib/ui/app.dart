
import 'package:abrtictactoe/app_lifecycle/app_lifecycle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../audio/audio_controller.dart';
/// import custom package
import '../controllers/player_controller.dart';
import '../route/router.dart';
import '../utils/string_res.dart';
import '../controllers/game_controller.dart';
import '../controllers/settings_controller.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return AppLifecycleObserver(
        child: MultiProvider(
          providers: [
            Provider(create: (context) => SettingsController()),
            ChangeNotifierProvider(create: (context) => GameController()),
            ChangeNotifierProvider(create: (context) => PlayerController()),
            ProxyProvider2<AppLifecycleStateNotifier, SettingsController,
                AudioController>(
              create: (context) => AudioController(),
              update: (context,
                  lifecycleNotifier,
                  settings, audio) {
                audio!.attachDependencies(lifecycleNotifier, settings);
                return audio;
              },
              dispose: (context, audio) => audio.dispose(),
              // Ensures that music starts immediately.
              lazy: false,
            ),
          ],
          child: Builder(
              builder: (_ ){
                return MaterialApp(
                  title: StringRes.appName,
                  debugShowCheckedModeBanner: false,
                  themeMode: ThemeMode.dark,
                  onGenerateRoute: AppRouter.generateRoute,
                );
              }
          ),
        )
    );
  }
}
