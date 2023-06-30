import 'package:flutter/material.dart';

class Controller{
  //Text field controller (First screen)
  TextEditingController textController = TextEditingController();

  //Word counter function (Second screen)
  Map<String, int> countWords(String text) {
    List<String> words = text.split(' ');
    Map<String, int> wordCount = {};

    for (String word in words) {
      if (wordCount.containsKey(word)) {
        wordCount[word] = wordCount[word]! + 1;
      } else {
        wordCount[word] = 1;
      }
    }

    return wordCount;
  }

}