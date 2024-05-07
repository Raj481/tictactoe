# abrtictactoe

# Overview
This documentation provides an overview of the Tic-Tac-Toe game implemented in Flutter. 
Tic-Tac-Toe is a classic two-player game where players take turns marking spaces 
in a 3x3 grid with their respective symbols (usually 'X' and 'O') with the objective of 
getting three of their symbols in a row, column, or diagonal.


# Features
Interactive Gameplay: Players can tap on empty cells to place their symbols ('X' or 'O') during their turn.
Winning Detection: The game automatically detects when a player has won by aligning three symbols in a row, column, or diagonal.
Draw Detection: If all cells are filled without any player achieving a winning combination, the game declares a draw.
Restart Option: Players can restart the game at any time to start a new match.
Turn Indicator: Displays which player's turn it is (Player 1 or Player 2).
Scoreboard: Keeps track of the number of wins for each player.

# Installation
To run the Tic-Tac-Toe game on your device, follow these steps:

Clone the Repository: Clone the repository from GitHub.

bash
git clone https://github.com/Raj481/tictactoe.git

Navigate to Project Directory: Move into the project directory.

bash
cd tic_tac_toe_flutter
Run the App: Run the app using Flutter.

flutter run

# Usage

Once the app is running on your device or emulator, you can start playing Tic-Tac-Toe. 
Here's how to play:

Launch the Game: Open the Tic-Tac-Toe app.
Game Setup: By default, the game starts with Player 1 (symbol 'X') as the first player. Player 2 (symbol 'O') goes second.
Take Turns: Players take turns tapping on empty cells to place their symbols. Player 1 starts.
Winning: The game automatically detects when a player has aligned three symbols in a row, column, or diagonal and declares them the winner.
Draw: If all cells are filled without any player achieving a winning combination, the game declares a draw.
Restart: At any point during the game, players can restart the match by tapping on the restart button.
Structure

**The project is structured as follows:**

lib/: Contains the Dart code for the Tic-Tac-Toe game.
main.dart: Entry point for the Flutter application.
game_board.dart: Widget for displaying the game board.
game_controller.dart: Logic for game state management, including detecting wins and draws.
player_controller.dart: Logic for players state management.
player_screen.dart: Widget for adding player, remove player, show player list, select icon for player.
settings_screen.dart: Widget for on/off audio, other app description option of app.

# Dependencies
The Tic-Tac-Toe game for Flutter has the following dependencies:

Flutter SDK: The Flutter framework for building native applications.
Dart: The programming language used by Flutter.
Provider: Manage state management of game, players on app state
Logging: Check for app functionality 
Audio Players: Playing audio for app
Shared Preferences: for storing some information like audio on/off for maintaining in app storage

# Credits
This Tic-Tac-Toe game was developed by **Rajesh Regar** and is released under the **MIT**.
Contributions and feedback are welcome.

# Support
For any questions or issues, please contact email **rajeshregar481@gmai.com**.

This documentation provides a comprehensive guide to the Tic-Tac-Toe game implemented in Flutter.
Players can enjoy a classic game of Tic-Tac-Toe with features such as interactive gameplay, 
winning detection, restart options, and more.

# **Screenshot**:

<img src="/screenshot/img1.jpeg" alt="image" width="320px" height="680px">
<img src="/screenshot/img2.jpeg" alt="image" width="320px" height="680px">
<img src="/screenshot/img3.jpeg" alt="image" width="320px" height="680px">
<img src="/screenshot/img4.jpeg" alt="image" width="320px" height="680px">
<img src="/screenshot/img5.jpeg" alt="image" width="320px" height="680px">
<img src="/screenshot/img6.jpeg" alt="image" width="320px" height="680px">
<img src="/screenshot/img7.jpeg" alt="image" width="320px" height="680px">