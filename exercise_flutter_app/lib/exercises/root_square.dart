import "dart:math";

import "exercise_base.dart";

class RootOrSquare implements Exercise {
  final int number;

  RootOrSquare(this.number);

  @override
  String get title => "Root or Square";

  @override
  String execute() {
    if (number > 0) {
      double result = sqrt(number);

      if (result % 1 == 0) {
        return "Result: ${result.toInt()}";
      } else {
        return "Result: $result";
      }
    } else if (number < 0) {
      int square = number * number;
      return "Result: $square";
    } else {
      return "Result: 0";
    }
  }
}
