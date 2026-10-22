import "exercise_base.dart";

class VowelCounter implements Exercise {
  final String word;

  VowelCounter(this.word);

  @override
  String get title => "Vowel Counter";

  @override
  String execute() {
    int count = 0;
    String lowerWord = word.toLowerCase();
    for (int i = 0; i < lowerWord.length; i++) {
      if (lowerWord[i] == 'a' ||
          lowerWord[i] == 'e' ||
          lowerWord[i] == 'i' ||
          lowerWord[i] == 'o' ||
          lowerWord[i] == 'u') {
        count++;
      }
    }
    return "Result: $count";
  }
}
