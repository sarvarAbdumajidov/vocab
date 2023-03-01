import 'dart:math';

import '../main/vocabulary_main.dart';
import '../model/vocabulary_model.dart';
import '../service/io_service.dart';

String text = io.text;

class Database {
  List<Vocabulary> vocabList = [];

  void addVocab(String key, String value) {
    Vocabulary vocabulary = new Vocabulary(key, value);
    vocabList.add(vocabulary);
  }

  void printInfo() {
    vocabList.sort((a, b) => a.word.compareTo(b.word));
    for (var values in vocabList) {
      print('''word ${values.word}    translate ${values.translate}
      ''');
    }
    print('chiqish uchun 0');
    number = io.number;
    if (number == 0) {}
  }

  void exit(Database database) {
    build(database);
  }

  void shuffle() {
    vocabList.shuffle();
    while (number != 0) {
      for (var item in vocabList) {
        print(item.word);
        text = io.text;
        if (item.translate == text) {
          print(true);
        } else {
          print(false);
        }
        print('davom ettirish uchun 1 ni bosing');
        print('chiqish uchun 0 ni bosing');
        number = io.number;
        if(number == 1){}
      }
    }
  }
}
