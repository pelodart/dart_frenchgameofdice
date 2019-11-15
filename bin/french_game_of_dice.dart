import 'dart:math';

class FrenchGameOfDice {
  Random _random;
  int _gotSix;
  int _gotNoSix;

  // c'tor
  FrenchGameOfDice() {
    _random = Random();
    _gotSix = 0;
    _gotNoSix = 0;
  }

  void play(int maxIterations) {
    if (maxIterations % 100 != 0 || maxIterations < 1000) {
      print('Wrong number of iterations: $max');
      return;
    }

    _printHeader();
    for (int i = 0; i <= maxIterations / 100; i++) {
      _doHundredTosses();
      _printLine(i + 1);
    }
    _printFooter(_chanceOfWinning(_gotSix, _gotNoSix), maxIterations);
  }

  // helper methods - game logic
  int _rollSingleDice() {
    return _random.nextInt(1 << 32) % 6 + 1;
  }

  List<int> _rollFourDices() {
    List<int> dices = List<int>();
    for (int i = 0; i < 4; i++) {
      dices.add(_rollSingleDice());
    }
    return dices;
  }

  bool _sixRolled(List<int> dices) {
    List<int> sixDices = dices.where((dice) => dice == 6).toList();
    return sixDices.length >= 1;
  }

  double _chanceOfWinning(int gotSix, int gotNoSix) {
    return (gotSix.toDouble() / (gotSix + gotNoSix).toDouble()) * 100.0;
  }

  void _doHundredTosses() {
    for (int i = 0; i < 100; i++) {
      List<int> dices = _rollFourDices();
      if (_sixRolled(dices)) {
        _gotSix++;
      } else {
        _gotNoSix++;
      }
    }
  }

  // helper methods - output
  String _lineToString(int lineNumber) {
    return _linePrefix(lineNumber) + _lineCenter() + _lineSuffix();
  }

  String _linePrefix(int lineNumber) {
    String s = '     ';
    if (lineNumber < 1000) s += ' ';
    s += '${lineNumber * 100}: ';
    return s;
  }

  String _lineSuffix() {
    return '(${_chanceOfWinning(_gotSix, _gotNoSix).toStringAsFixed(2)})';
  }

  String _lineCenter() {
    double chance = _chanceOfWinning(_gotSix, _gotNoSix);

    int numSpaces = 50;
    int freeLeadingSpaces =
        ((chance - 40.0) * 2.5).toInt(); // 1 percent == 2,5 positions
    int freeTrailingSpaces = numSpaces - freeLeadingSpaces;

    String s = '';
    for (int i = 0; i < freeLeadingSpaces; i++) s += ' ';
    s += '*';
    for (int i = 0; i < freeTrailingSpaces; i++) s += ' ';
    s += '          '; // padding to the right
    return s;
  }

  void _printLine(int lineNumber) {
    print(_lineToString(lineNumber));
  }

  void _printHeader() {
    print(
        '           40   42   44   46   48   50   52   54   56   58   60          Prozent');
    print(
        'Spiele ----+----+----+----+----+----+----+----+----+----+----+----   (Gewinnchance)');
    print('');
  }

  void _printFooter(double chance, int numIterations) {
    print(
        '==> Statistisch ermnittelte Gewinnchance ($numIterations Würfe): $chance');
  }
}
