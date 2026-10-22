import "exercise_base.dart";

class StringLength implements Exercise {
  final String word;

  StringLength(this.word);

  @override
  String get title => "String Length";

  @override
  String execute() {
    return "Result: ${word.length}";
  }
}
