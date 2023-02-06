import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  WordPair currentWord = WordPair.random();

  void getNext() {
    currentWord = WordPair.random();
    notifyListeners();
  }
}
