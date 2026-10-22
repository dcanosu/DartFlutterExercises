import "exercise_base.dart";

class SumOfEvens implements Exercise {
  @override
  String get title => "Sum of Evens";

  @override
  String execute() {
    int sum = 0;
    for (int i = 1; i <= 50; i++) {
      if (i % 2 == 0) {
        sum += i;
      }
    }
    return "Result: $sum";
  }
}
