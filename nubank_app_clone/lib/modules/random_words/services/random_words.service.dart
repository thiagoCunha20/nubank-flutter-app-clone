import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsService extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  final favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }

  bool containsWordPaid() {
    return favorites.contains(current);
  }
}
