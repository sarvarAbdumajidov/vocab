import '../database/vocabulary_database.dart';
import '../service/io_service.dart';

int number = io.number;

void build(Database database) {
  print('''
  1. Yangi so'zlarni kiritish
  2. So'zlarni takrorlash
  3. Siz qo'shgan A-Z gacha saralangan hamma so'zlar
  4. Xato kiritilgan so'zlarni o'chirish
   ''');

  number = io.number;

  switch (number) {
    case 1:
      {
        print('word');
        String key = io.text;
        print('translate');
        String value = io.text;
        database.addVocab(key, value);
        database.exit(database);
      }
      break;
    case 3:
      {
        database.printInfo();
        database.exit(database);
      }
      break;
  }
}
