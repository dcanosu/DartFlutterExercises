import "exercise_base.dart";

class FactorialFinder implements Exercise {
  final int number;

  FactorialFinder(this.number);

  @override
  String get title => "Factorial Finder";

  @override
  String execute() {
    int n = number;
    if (n >= 0) {
      int factorial = 1;
      for (int i = 1; i <= n; i++) {
        factorial *= i;
      }
      return "Result: $factorial";
    } else {
      return "Result: Invalid number.";
    }
  }
}
