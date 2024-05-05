import 'package:abrtictactoe/controllers/settings_controller.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

import '../app_lifecycle/app_lifecycle.dart';

class AudioController {
  static final _log = Logger('AudioController');
  late final AudioPlayer _audioPlayer;
  PlayerState? _playerState;
  SettingsController? _settings;
  ValueNotifier<AppLifecycleState>? _lifecycleNotifier;

  AudioController()
      :  _audioPlayer = AudioPlayer(playerId: 'musicPlayer') {
    _audioPlayer.onPlayerComplete.listen(_handleSongFinished);
  }

  void attachDependencies(AppLifecycleStateNotifier lifecycleNotifier,
      SettingsController settingsController) {
    _attachLifecycleNotifier(lifecycleNotifier);
    _attachSettings(settingsController);
  }
  void _attachLifecycleNotifier(AppLifecycleStateNotifier lifecycleNotifier) {
    _lifecycleNotifier?.removeListener(_handleAppLifecycle);

    lifecycleNotifier.addListener(_handleAppLifecycle);
    _lifecycleNotifier = lifecycleNotifier;
  }

  void _handleAppLifecycle() {
    switch (_lifecycleNotifier!.value) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        _stopAllSound();
      case AppLifecycleState.resumed: {
        if(_settings!.audioOn.value){
          // _audioPlayer.play();
          // _playerState = PlayerState.playing;
        }

      }
      case AppLifecycleState.inactive: break;
    }
  }
  void _handleSongFinished(void _) {
    _log.info('Last song finished playing.');
  }

  void _audioOnHandler() {
    _log.fine('audioOn changed to ${_settings!.audioOn.value}');
    if (_settings!.audioOn.value) {
      // All sound just got un-muted. Audio is on.
    } else {
      // All sound just got muted. Audio is off.
      _stopAllSound();
    }
  }

  void _attachSettings(SettingsController settingsController) {
    if (_settings == settingsController) {
      // Already attached to this instance. Nothing to do.
      return;
    }

    // Remove handlers from the old settings controller if present
    final oldSettings = _settings;
    if (oldSettings != null) {
      oldSettings.audioOn.removeListener(_audioOnHandler);
    }

    _settings = settingsController;

    // Add handlers to the new settings controller
    settingsController.audioOn.addListener(_audioOnHandler);

  }

  void _stopAllSound() {
    _log.info('Stopping all sound');
    _audioPlayer.stop();
  }

  void setSource(String source) async {
    _audioPlayer.play(AssetSource(source));
  }

  void playAudio(String source) async {
    await _audioPlayer.play(AssetSource(source));
  }

  void dispose() {
    _lifecycleNotifier?.removeListener(_handleAppLifecycle);
    _stopAllSound();
    _audioPlayer.dispose();
  }

}