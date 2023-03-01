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
      print('''${values.word} --- ${values.translate}
      ''');
    }
    print('0. back');
    number = io.number;
    if (number == 0) {}
  }

  void exit(Database database) {
    build(database);
  }

  void shuffle() {
    while (number != 0) {
      vocabList.shuffle();
      for (var item in vocabList) {
        print(item.word);
        text = io.text;
        if (item.translate == text) {
          print(true);
        } else {
          print(false);
        }
        print('1. continue');
        print('0. back');
        number = io.number;
        if (number == 1) {}
      }
    }
  }

  void remove() {
    text = io.text;
    vocabList.removeWhere((element) => element.word == text);
  }
}
