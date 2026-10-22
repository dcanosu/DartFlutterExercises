import "exercise_base.dart";

class AverageOfFour implements Exercise {
  final double num1;
  final double num2;
  final double num3;
  final double num4;

  AverageOfFour(this.num1, this.num2, this.num3, this.num4);

  @override
  String get title => "Average of Four";

  @override
  String execute() {
    double sum = num1 + num2 + num3 + num4;
    return "Result: ${sum / 4.0}";
  }
}
