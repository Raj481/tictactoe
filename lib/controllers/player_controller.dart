
import 'package:flutter/material.dart';

import '../models/player.dart';

class PlayerController extends ChangeNotifier {

  List<Player> _playerList = [];
  List<Player> get getPlayer => _playerList;

  TextEditingController textController = TextEditingController();
  String playerName = "";
  String playerIcon = "";
  setPlayerName(String value){
    playerName = value;
    notifyListeners();
  }
  setPlayerIcon(String value){
    playerIcon = value;
    notifyListeners();
  }

  resetPlayer(){
    playerName = "";
    playerIcon = "";
    textController = TextEditingController();
    notifyListeners();
  }

  addPlayer(Player value) {
    if(_playerList.length == 2) return;
    _playerList.add(value);
    notifyListeners();
  }

  removePlayer(int index) {
    if(_playerList.isEmpty) return;
    _playerList.removeAt(index);
    notifyListeners();
  }

  reset(){
   // _playerList = [];
    textController = TextEditingController();
    playerName = "";
    playerIcon = "";
    notifyListeners();
  }

}