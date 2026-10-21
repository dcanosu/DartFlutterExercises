import "exercise_base.dart";

class RemainderFinder implements Exercise {
  final int num1;
  final int num2;

  RemainderFinder(this.num1, this.num2);

  @override
  String get title => "Remainder Finder";

  @override
  String execute() {
    if (num2 != 0) {
      int remainder = num1 % num2;
      return "Result: $remainder";
    } else {
      return "Result: Division by zero is not allowed.";
    }
  }
}