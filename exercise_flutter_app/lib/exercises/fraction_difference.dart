import "exercise_base.dart";

class FractionDifference implements Exercise {
  final double num1;
  final double den1;
  final double num2;
  final double den2;

  FractionDifference(this.num1, this.den1, this.num2, this.den2);

  @override
  String get title => "Fraction Difference";

  @override
  String execute() {
    double commonDenominator = den1 * den2;
    double numerator1 = num1 * den2;
    double numerator2 = num2 * den1;
    double resultingNumerator = numerator1 - numerator2;

    if (resultingNumerator == 0) {
      return "Result: 0";
    }

    double absNumerator = resultingNumerator.abs();
    double absDenominator = commonDenominator.abs();

    double gcd = GreatestCommonDivisor(absNumerator, absDenominator);

    double simplifiedNumerator = resultingNumerator / gcd;
    double simplifiedDenominator = commonDenominator / gcd;

    if (simplifiedDenominator == 1) {
      double finalSign = resultingNumerator < 0 ? -1 : 1;
      return "Result: ${finalSign * simplifiedNumerator.abs()}";
    } else {
      String signPrefix = resultingNumerator < 0 ? "-" : "";
      return "Result: $signPrefix${simplifiedNumerator.abs()}/${simplifiedDenominator.abs()}";
    }
  }

  static double GreatestCommonDivisor(double a, double b) {
    while (b != 0) {
      double temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}