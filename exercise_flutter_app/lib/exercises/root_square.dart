import "dart:math";

import "exercise_base.dart";

class RootOrSquare implements Exercise {
  final double number;

  RootOrSquare(this.number);

  @override
  String get title => "Root or Square";

  @override
  String execute() {
    if (number > 0) {
      return "Result: ${sqrt(number)}";
    } else if (number < 0) {
      return "Result: ${number * number}";
    } else {
      return "Result: 0";
    }
  }
}