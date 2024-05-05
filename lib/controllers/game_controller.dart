
import 'package:abrtictactoe/models/player.dart';
import 'package:flutter/cupertino.dart';

class GameController extends ChangeNotifier {
  late List<List<String>> board;

  Player? currentPlayer;
  List<Player> _playerList = [];
  GameController(){
    initialized();
  }
  initialized(){
    board = List.generate(
        3,
            (_) => List.generate(
            3,
                (_) => "")
    );
    notifyListeners();
  }
  setPlayerList(List<Player> value) {
    if(_playerList.isNotEmpty) return;
    _playerList = value;
    currentPlayer = _playerList.first;
    notifyListeners();
  }
  setCurrentPlayer(Player value){
    currentPlayer = value;
    notifyListeners();
  }
  resetBoard(){
    board = List.generate(
        3,
            (_) => List.generate(
            3, (_) => "")
    );
    notifyListeners();
  }
  bool checkWinner() {
    // Check rows
    for (var row in board) {
      if (row[0] != "" && row[0] == row[1] && row[1] == row[2]) {
        return true;
      }
    }
    // Check columns
    for (var col = 0; col < 3; col++) {
      if (board[0][col] != "" &&
          board[0][col] == board[1][col] &&
          board[1][col] == board[2][col]) {
        return true;
      }
    }
    // Check diagonals
    if (board[0][0] != "" &&
        board[0][0] == board[1][1] &&
        board[1][1] == board[2][2]) {
      return true;
    }
    if (board[0][2] != "" &&
        board[0][2] == board[1][1] &&
        board[1][1] == board[2][0]) {
      return true;
    }
    // Check for draw
    if (!board.any((row) => row.contains(""))) {
      return true;
    }
    return false;
  }
  bool isValidMove(int row, int col) {
    return board[row][col] == "";
    // return row >= 0 &&
    //     row < 3 &&
    //     col >= 0 &&
    //     col < 3 &&
    //     board[row][col] == "";
  }

  void makeMove(int row, int col) {

    if (isValidMove(row, col)) {
     if(!checkWinner()) {
       board[row][col] = currentPlayer!.icon!;
       currentPlayer = (currentPlayer?.icon == _playerList.first.icon)
           ? _playerList[1] : _playerList[0];
     }
    } else {
      // print("Invalid move! Try again.");
    }
    notifyListeners();
  }

  reset(){
    board = List.generate(
        3,
            (_) => List.generate(
            3,
                (_) => "")
    );
     currentPlayer = null;
    _playerList = [];
    notifyListeners();
  }

}
