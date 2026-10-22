import "exercise_base.dart";

class SmallestOfFive implements Exercise {
  final List<int> numbers;

  SmallestOfFive(this.numbers);

  @override
  String get title => "Smallest of Five";

  @override
  String execute() {
    if (numbers.isEmpty) {
      return "Result: No numbers provided.";
    }

    int smallest = numbers[0];

    for (var number in numbers) {
      if (number < smallest) {
        smallest = number;
      }
    }
    return "Result: $smallest";
  }
}
