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

    const vowels = "aeiou";
    for (int i = 0; i < lowerWord.length; i++) {
      if (vowels.contains(lowerWord[i])) {
        count++;
      }
    }
    return "Result: $count";
  }
}
