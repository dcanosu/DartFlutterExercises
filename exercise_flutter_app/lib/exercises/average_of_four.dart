import "exercise_base.dart";

class AverageOfFour implements Exercise {
  final int num1;
  final int num2;
  final int num3;
  final int num4;

  AverageOfFour(this.num1, this.num2, this.num3, this.num4);

  @override
  String get title => "Average of Four";

  @override
  String execute() {
    int sum = num1 + num2 + num3 + num4;
    if (sum % 4 == 0) {
      int average = sum ~/ 4;
      return "Result: $average";
    } else {
      double average = sum / 4.0;
      return "Result: $average";
    }
  }
}
