import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  WordPair currentWord = WordPair.random();
  Set<WordPair> favorites = <WordPair>{};

  void getNext() {
    currentWord = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite() {
    if (favorites.contains(currentWord)) {
      favorites.remove(currentWord);
    } else {
      favorites.add(currentWord);
    }
    notifyListeners();
  }
}
