class Vocabulary {
  String _word;
  String _translate;

  Vocabulary(this._word, this._translate);

  String get translate => _translate;

  String get word => _word;

  set translate(String value) {
    _translate = value;
  }

  set word(String value) {
    _word = value;
  }

  @override
  String toString() {
    String text = '''
    word  $_word
    translate  $_translate   
     ''';
    return text;
  }
}
