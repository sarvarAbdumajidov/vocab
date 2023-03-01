import '../database/vocabulary_database.dart';
import '../service/io_service.dart';

int number = io.number;
String key = io.text;
String value = io.text;
int countNum = 0;

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
        num countt = 1;
        while (countt != 0) {
          countNum++;
          print('word');
          key = io.text;
          print('translate');
          value = io.text;
          print('0. back');
          print('1. continue');
          countt = io.number;
          database.addVocab(key, value);
          if (countt == 0) {
            database.exit(database);
          }
        }
      }
      break;
    case 2:
      {
        database.shuffle();
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
