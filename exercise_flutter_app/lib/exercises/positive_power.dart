import "exercise_base.dart";

class PositivePower implements Exercise {
  final double number;

  PositivePower(this.number);

  @override
  String get title => "1. Positive Power";

  @override
  String execute() {
    if (number > 0) {
      return "Result: ${number * number}";
    } else if (number < 0) {
      return "Result: Negative number.";
    } else {
      return "Result: 0";
    }
  }
}