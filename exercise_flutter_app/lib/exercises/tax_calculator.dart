import "exercise_base.dart";

class TaxCalculator implements Exercise {
  final double salary;

  TaxCalculator(this.salary);

  @override
  String get title => "Tax Calculator";

  @override
  String execute() {
    if (salary > 12000) {
      double tax = (salary - 12000) * 0.15;
      return "Result: $tax";
    } else {
      return "Result: No tax to pay.";
    }
  }
}