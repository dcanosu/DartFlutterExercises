import "exercise_base.dart";

class InRangeValidator implements Exercise {
  final int number;

  InRangeValidator(this.number);


  @override
  String get title => "In-Range Validator";

  @override
  String execute() {
    int n = number;
    if (n >= 10 && n <= 20) {
      return "Result: In the range.";
    } else {
      return "Result: Out of the range.";
    }
  }
}