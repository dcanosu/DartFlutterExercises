import "exercises/exercise_base.dart";
import "exercises/positive_power.dart";
import "exercises/average_of_four.dart";
import "exercises/circle_perimeter.dart";
import "exercises/double_triple.dart";
import "exercises/root_square.dart";
import "exercises/midweek_day.dart";
import "exercises/tax_calculator.dart";
import "exercises/remainder_finder.dart";

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
];
