import "exercise_base.dart";

class SmallestOfFive implements Exercise {
  final List<double> numbers;

  SmallestOfFive(this.numbers);

  @override
  String get title => "Smallest of Five";

  @override
  String execute() {
    if (numbers.isEmpty) {
      return "Result: No numbers provided.";
    }

    double smallest = numbers[0];

    for (var number in numbers) {
      if (number < smallest) {
        smallest = number;
      }
    }
    return "Result: $smallest";
  }
}
