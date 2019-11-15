

import 'french_game_of_dice.dart';

// =======================================================

const int maxIterations = 2000;

// final Random random = Random();

void main() {
  FrenchGameOfDice game = FrenchGameOfDice();
  game.play(maxIterations);
}

// void main() {
//   printplayGameWithChartChart(Iterations);
// }

// int rollSingleDice() {
//   return random.nextInt(1 << 32) % 6 + 1;
// }

// List<int> rollFourDices() {
//   List<int> dices = List<int>();
//   for (int i = 0; i < 4; i++) {
//     dices.add(rollSingleDice());
//   }
//   return dices;
// }

// bool sixRolled(List<int> dices) {
//   List<int> sixDices = dices.where((dice) => dice == 6).toList();
//   return sixDices.length >= 1;
// }

// double chanceOfWinning(int gotSix, int gotNoSix) {
//   return (gotSix.toDouble() / (gotSix + gotNoSix).toDouble()) * 100.0;
// }

// void playGameWithoutChart(int count) {
//   if (count % 100 != 0 || count < 1000) {
//     print('Wrong number of iterations: $count');
//     return;
//   }

//   int gotSix = 0;
//   int gotNoSix = 0;

//   for (int i = 0; i < count; i++) {
//     List<int> dices = rollFourDices();
//     if (sixRolled(dices)) {
//       gotSix++;
//     } else {
//       gotNoSix++;
//     }
//   }

//   print('gotSix: $gotSix');
//   print('gotNoSix: $gotNoSix');
//   print('chanceOfWinning: ${chanceOfWinning(gotSix, gotNoSix)}');
// }

// void printplayGameWithChartChart(int maxIterations) {
//   if (maxIterations % 100 != 0 || maxIterations < 1000) {
//     print('Wrong number of iterations: $max');
//     return;
//   }

//   int gotSix = 0;
//   int gotNoSix = 0;

//   void doHundredTosses() {
//     for (int i = 0; i < 100; i++) {
//       List<int> dices = rollFourDices();
//       if (sixRolled(dices)) {
//         gotSix++;
//       } else {
//         gotNoSix++;
//       }
//     }
//   }

//   printHeader();
//   for (int i = 100; i <= maxIterations; i += 100) {
//     doHundredTosses();
//     print(printLine(i, gotSix, gotNoSix));
//     // printLine(i, gotSix, gotNoSix);
//   }
//   print(printFooter(chanceOfWinning(gotSix, gotNoSix), Iterations));
// }

// void printHeader() {
//   print(
//       '           40   42   44   46   48   50   52   54   56   58   60          Prozent');
//   print(
//       'Spiele ----+----+----+----+----+----+----+----+----+----+----+----   (Gewinnchance)');
//   print('');
// }

// String printFooter(double chance, int numIterations) {
//   return '==> Statistisch ermnittelte Gewinnchance (XXX Würfe): YYY';
// }

// String printLine(int count, int gotSix, int gotNoSix) {
//   String printPrefix(int value) {
//     String s = '     ';
//     if (value < 1000) s += ' ';
//     s += '$value: ';
//     return s;
//   }

//   String printSuffix() {
//     return '(${chanceOfWinning(gotSix, gotNoSix).toStringAsFixed(2)})';
//   }

//   String printChanceOfWinning(int gotSix, int gotNoSix) {
//     double chance = chanceOfWinning(gotSix, gotNoSix);

//     int numSpaces = 50;
//     int freeLeadingSpaces =
//         ((chance - 40.0) * 2.5).toInt(); // 1 percent == 2,5 positions
//     int freeTrailingSpaces = numSpaces - freeLeadingSpaces;

//     String s = '';
//     for (int i = 0; i < freeLeadingSpaces; i++) s += ' ';
//     s += '*';
//     for (int i = 0; i < freeTrailingSpaces; i++) s += ' ';
//     s += '          '; // padding to the right
//     return s;
//   }

//   return printPrefix(count) +
//       printChanceOfWinning(gotSix, gotNoSix) +
//       printSuffix();
// }
