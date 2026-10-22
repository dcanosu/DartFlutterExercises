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
  final Exercise Function(List<double> inputs) builder;

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
    description:
        "Calculates the square of a positive number only if it is positive.",
    inputLabels: ["Enter a positive number:"],
    builder: (inputs) => PositivePower(inputs.isNotEmpty ? inputs[0] : 0),
  ),
  ExerciseItem(
    title: "Double or Triple",
    description: "Calculates the double or triple of a given number.",
    inputLabels: ["Enter the first number:", "Enter the second number:"],
    builder: (inputs) => DoubleOrTriple(
      inputs.length > 0 ? inputs[0] : 0,
      inputs.length > 1 ? inputs[1] : 0,
    ),
  ),
  ExerciseItem(
    title: "Root or Square",
    description: "Calculates the square root or the square of a given number.",
    inputLabels: ["Enter a number:"],
    builder: (inputs) => RootOrSquare(inputs.isNotEmpty ? inputs[0] : 0),
  ),

  ExerciseItem(
    title: "Circle Perimeter",
    description: "Calculates the perimeter of a circle given its radius.",
    inputLabels: ["Enter the radius:"],
    builder: (inputs) => CirclePerimeter(inputs.isNotEmpty ? inputs[0] : 0),
  ),
  ExerciseItem(
    title: "Midweek Day",
    description: "Determines the day of the week for a given date.",
    inputLabels: ["Enter a date (day, month, year):"],
    builder: (inputs) => MidweekDay(inputs.isNotEmpty ? inputs[0].toInt() : 0),
  ),
  ExerciseItem(
    title: "Tax Calculator",
    description: "Calculates the tax for a given amount.",
    inputLabels: ["Enter the amount:"],
    builder: (inputs) => TaxCalculator(inputs.isNotEmpty ? inputs[0] : 0),
  ),
  ExerciseItem(
    title: "Remainder Finder",
    description: "Finds the remainder of a division.",
    inputLabels: ["Dividend:", "Divisor:"],
    builder: (inputs) => RemainderFinder(
      inputs.length > 0 ? inputs[0].toInt() : 0,
      inputs.length > 1 ? inputs[1].toInt() : 0,
    ),
  ),
  
  ExerciseItem(
    title: "Sum of Evens",
    description: "Calculates the sum of even numbers from 1 to 50.",
    inputLabels: [],
    builder: (inputs) => SumOfEvens(),
  ),
  ExerciseItem(
    title: "Fraction Difference",
    description: "Calculates the difference between two fractions.",
    inputLabels: ["Numerator 1:", "Denominator 1:", "Numerator 2:", "Denominator 2:"],
    builder: (inputs) => FractionDifference(
      inputs.length > 0 ? inputs[0] : 0,
      inputs.length > 1 ? inputs[1] : 1,
      inputs.length > 2 ? inputs[2] : 0,
      inputs.length > 3 ? inputs[3] : 1,
    ),
  ),
  ExerciseItem(
    title: "String Length",
    description: "Calculates the length of a given string.",
    inputLabels: ["Enter a string:"],
    builder: (inputs) => StringLength(inputs.isNotEmpty ? inputs[0].toString() : ""),
  ),
  ExerciseItem(
    title: "Average of Four",
    description: "Calculates the average of four numbers.",
    inputLabels: ["Number 1:", "Number 2:", "Number 3:", "Number 4:"],
    builder: (inputs) => AverageOfFour(
      inputs.length > 0 ? inputs[0] : 0,
      inputs.length > 1 ? inputs[1] : 0,
      inputs.length > 2 ? inputs[2] : 0,
      inputs.length > 3 ? inputs[3] : 0,
    ),
  ),
  ExerciseItem(
    title: "Smallest of Five",
    description: "Finds the smallest number among five numbers.",
    inputLabels: ["Number 1:", "Number 2:", "Number 3:", "Number 4:", "Number 5:"],
    builder: (inputs) => SmallestOfFive(inputs),
    ),
  ExerciseItem(
    title: "Vowel Counter",
    description: "Counts the number of vowels in a given word.",
    inputLabels: ["Enter a word:"],
    builder: (inputs) => VowelCounter(inputs.isNotEmpty ? inputs[0].toString() : ""),
  ),
  ExerciseItem(
    title: "Factorial Finder",
    description: "Calculates the factorial of a given number.",
    inputLabels: ["Enter a number:"],
    builder: (inputs) => FactorialFinder(inputs.isNotEmpty ? inputs[0].toInt() : 0),
  ),  ExerciseItem(
    title: "In-Range Validator",
    description: "Checks if a number is within a specified range.",
    inputLabels: ["Enter a number:", "Enter the minimum value:", "Enter the maximum value:"],
    builder: (inputs) => InRangeValidator(
    inputs.length > 0 ? inputs[0].toInt() : 0,
    )),
];
