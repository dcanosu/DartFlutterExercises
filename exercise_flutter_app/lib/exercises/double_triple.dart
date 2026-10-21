import "exercise_base.dart";

class DoubleOrTriple implements Exercise {
  final double num1;
  final double num2;

  DoubleOrTriple(this.num1, this.num2);

  @override
  String get title => "Double or Triple";

  @override
  String execute() {
    if (num1 >= num2) {
      return "Result: ${num1 * 2}";
    } else {
      return "Result: ${num2 * 3}";
    }
  }
}