import 'french_game_of_dice.dart';

const int maxIterations = 2000;

void main() {
  FrenchGameOfDice game = FrenchGameOfDice();
  game.play(maxIterations);
}
