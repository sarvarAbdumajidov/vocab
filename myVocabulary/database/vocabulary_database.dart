import 'dart:math';

import '../main/vocabulary_main.dart';
import '../model/vocabulary_model.dart';
import '../service/io_service.dart';

class Database {
  List<Vocabulary> vocabList = [];

  void addVocab(String key, String value) {
    Vocabulary vocabulary = new Vocabulary(key, value);
    vocabList.add(vocabulary);
  }

  void printInfo() {
    vocabList.sort((a, b) => a.word.compareTo(b.word));
    for (var values in vocabList) {
      print('word ${values.word}    translate ${values.translate}');
    }
  }

  void exit(Database database) {
    build(database);
  }

  void shuffle() {
    vocabList.shuffle();

    for(var values in vocabList){
      print(values.word);
      value = io.text;
      if(values.word == value){
        print(true);
      }else{
        false;
      }
    }

  }
}
