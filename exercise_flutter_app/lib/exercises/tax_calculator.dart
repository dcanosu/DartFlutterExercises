import "exercise_base.dart";

class TaxCalculator implements Exercise {
  final int salary;

  TaxCalculator(this.salary);

  @override
  String get title => "Tax Calculator";

  @override
  String execute() {
    if (salary > 12000) {
      int tax = ((salary - 12000) * 15) ~/ 100;
      return "Result: $tax";
    } else {
      return "Result: No tax to pay.";
    }
  }
}
