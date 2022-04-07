import 'dart:math';

import 'package:english_words/english_words.dart';

class Chips {
  String chipNames;
  bool choosed;

  Chips({required this.chipNames, required this.choosed});
}

var rng = Random();
final words = all;
List<Chips> chipsSelectedList = [];

List<Chips> chipsList = [
  Chips(chipNames: words[rng.nextInt(all.length - 1)], choosed: false),
  Chips(chipNames: words[rng.nextInt(all.length - 1)], choosed: false),
  Chips(chipNames: words[rng.nextInt(all.length - 1)], choosed: false),
  Chips(chipNames: words[rng.nextInt(all.length - 1)], choosed: false),
  Chips(chipNames: words[rng.nextInt(all.length - 1)], choosed: false),
];
