import "exercises/exercise_base.dart";
import "exercises/positive_power.dart";
import "exercises/double_triple.dart";
import "exercises/root_square.dart";
import "exercises/circle_perimeter.dart";
import "exercises/midweek_day.dart";
import "exercises/tax_calculator.dart";
import "exercises/remainder_finder.dart";
import "exercises/sum_evens.dart";
import "exercises/fraction_difference.dart";
import "exercises/string_length.dart";
import "exercises/average_of_four.dart";
import "exercises/smallest_five.dart";
import "exercises/vowel_counter.dart";
import "exercises/factorial_finder.dart";
import "exercises/inrange_validator.dart";

class ExerciseItem {
  final String title;
  final String description;
  final List<String> inputLabels;
  final Exercise Function(List<String> inputs) builder;

  ExerciseItem({
    required this.title,
    required this.description,
    required this.inputLabels,
    required this.builder,
  });
}

final List<ExerciseItem> allExercises = [
  ExerciseItem(
    title: "Positive Power",
    description: "Calculates the square of a number only if it is positive.",
    inputLabels: ["Enter a positive number:"],
    builder: (inputs) =>
        PositivePower(inputs.isNotEmpty ? int.tryParse(inputs[0]) ?? 0 : 0),
  ),
  ExerciseItem(
    title: "Double or Triple",
    description: "Returns the double of the first number if larger, otherwise three times the second.",
    inputLabels: ["Enter the first number:", "Enter the second number:"],
    builder: (inputs) => DoubleOrTriple(
      inputs.length > 0 ? int.tryParse(inputs[0]) ?? 0 : 0,
      inputs.length > 1 ? int.tryParse(inputs[1]) ?? 0 : 0,
    ),
  ),
  ExerciseItem(
    title: "Root or Square",
    description:
        "Calculates the square root if positive, otherwise its square.",
    inputLabels: ["Enter a number:"],
    builder: (inputs) =>
        RootOrSquare(inputs.isNotEmpty ? int.tryParse(inputs[0]) ?? 0 : 0),
  ),

  ExerciseItem(
    title: "Circle Perimeter",
    description: "Calculates the perimeter of a circle given its radius.",
    inputLabels: ["Enter the radius of the circle:"],
    builder: (inputs) => CirclePerimeter(inputs.isNotEmpty ? double.tryParse(inputs[0]) ?? 0.0 : 0.0),
  ),
  ExerciseItem(
    title: "Midweek Day",
    description: "Displays the corresponding weekday (weekdays only) for a number between 1 and 7.",
    inputLabels: ["Enter a day of the week (1-7):"],
    builder: (inputs) => MidweekDay(inputs.isNotEmpty ? int.tryParse(inputs[0]) ?? 0 : 0),
  ),
  ExerciseItem(
    title: "Tax Calculator",
    description:
        "Calculates a 15% tax on the excess if annual salary exceeds 12,000.",
    inputLabels: ["Enter your annual salary:"],
    builder: (inputs) =>
        TaxCalculator(inputs.isNotEmpty ? int.tryParse(inputs[0]) ?? 0 : 0),
  ),
  ExerciseItem(
    title: "Remainder Finder",
    description: "Displays the remainder of the division of the first number by the second.",
    inputLabels: ["Enter the first number:", "Enter the second number:"],
    builder: (inputs) => RemainderFinder(
      inputs.length > 0 ? int.tryParse(inputs[0]) ?? 0 : 0,
      inputs.length > 1 ? int.tryParse(inputs[1]) ?? 0 : 0,
    ),
  ),

  ExerciseItem(
    title: "Sum of Evens",
    description:
        "Calculates and displays the sum of all even numbers between 1 and 50.",
    inputLabels: [],
    builder: (inputs) => SumOfEvens(),
  ),
  ExerciseItem(
    title: "Fraction Difference",
    description: "Calculates the difference between two fractions.",
    inputLabels: [
      "Enter the first number:",
      "Enter the first denominator:",
      "Enter the second number:",
      "Enter the second denominator:",
    ],
    builder: (inputs) => FractionDifference(
      inputs.length > 0 ? double.tryParse(inputs[0]) ?? 0 : 0,
      inputs.length > 1 ? double.tryParse(inputs[1]) ?? 1 : 1,
      inputs.length > 2 ? double.tryParse(inputs[2]) ?? 0 : 0,
      inputs.length > 3 ? double.tryParse(inputs[3]) ?? 1 : 1,
    ),
  ),
  ExerciseItem(
    title: "String Length",
    description: "Displays the length of a given word or string.",
    inputLabels: ["Enter a word:"],
    builder: (inputs) =>
        StringLength(inputs.isNotEmpty ? inputs[0] : ""),
  ),
  ExerciseItem(
    title: "Average of Four",
    description: "Calculates the average of four numbers.",
    inputLabels: [
      "Enter the first number:",
      "Enter the second number:",
      "Enter the third number:",
      "Enter the fourth number:",
    ],
    builder: (inputs) => AverageOfFour(
      inputs.length > 0 ? int.tryParse(inputs[0]) ?? 0 : 0,
      inputs.length > 1 ? int.tryParse(inputs[1]) ?? 0 : 0,
      inputs.length > 2 ? int.tryParse(inputs[2]) ?? 0 : 0,
      inputs.length > 3 ? int.tryParse(inputs[3]) ?? 0 : 0,
    ),
  ),
  ExerciseItem(
    title: "Smallest of Five",
    description: "Finds and displays the smallest number among five numbers.",
    inputLabels: [
      "Number 1:",
      "Number 2:",
      "Number 3:",
      "Number 4:",
      "Number 5:",
    ],
    builder: (inputs) =>
        SmallestOfFive(inputs.map((element) => int.tryParse(element) ?? 0).toList()),
  ),
  ExerciseItem(
    title: "Vowel Counter",
    description: "Counts the number of vowels in a given word.",
    inputLabels: ["Enter a word:"],
    builder: (inputs) =>
        VowelCounter(inputs.isNotEmpty ? inputs[0]: ""),
  ),
  ExerciseItem(
    title: "Factorial Finder",
    description: "Calculates the factorial of a given number.",
    inputLabels: ["Enter a number:"],
    builder: (inputs) =>
        FactorialFinder(inputs.isNotEmpty ? int.tryParse(inputs[0]) ?? 0 : 0),
  ),
  ExerciseItem(
    title: "In-Range Validator",
    description:
        "Checks if a number is within the range of 10 to 20 (inclusive).",
    inputLabels: ["Enter a number:"],
    builder: (inputs) =>
        InRangeValidator(inputs.length > 0 ? int.tryParse(inputs[0]) ?? 0 : 0),
  ),
];
