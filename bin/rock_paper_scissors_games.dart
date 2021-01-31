import 'dart:io';

import 'dart:math';

void main() {
  //while true
  //  show promt
  //  Read user from console
  //  if input is a valid move ('r','p','s')
  //    chose the AI move at random
  //    comparethe player move with AI move
  //    show the result
  //else if input is 'q'
  //    quit the program
  //else
  //    invalid input

  /*---------------------------- Game Program Code------------------*/
  final rng = Random();

  while (true) {
    stdout.write('Rock,Paper or Scissors?(r/p/s) : ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];

      print('You played: $playerMove');
      print('AI played: $aiMove');

      if (playerMove == aiMove) {
        print('It\'s a Draw..!');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print('You Win');
      } else {
        print('You Lose..!');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input!');
    }
  }
}

//Moves in game
enum Move { rock, paper, scissors }
