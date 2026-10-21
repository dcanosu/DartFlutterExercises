import "exercises/exercise_base.dart";
import "exercises/positive_power.dart";
import "exercises/average_of_four.dart";
import "exercises/circle_perimeter.dart";
import "exercises/double_triple.dart";
import "exercises/root_square.dart";
import "exercises/midweek_day.dart";
import "exercises/tax_calculator.dart";
import "exercises/remainder_finder.dart";

// Creamos una clase modelo simple para representar cada elemento del menú
class ExerciseItem {
  final String title;
  final Exercise Function(List<double> inputs)
  builder; // Fábrica para construirlo con los datos

  ExerciseItem({required this.title, required this.builder});
}

// Lista de ejercicios disponibles con su respectiva fábrica
final List<ExerciseItem> allExercises = [
  ExerciseItem(
    title: "Positive Power",
    builder: (inputs) => PositivePower(inputs.isNotEmpty ? inputs[0] : 0),
  ),
  ExerciseItem(
    title: "Double or Triple",
    builder: (inputs) => DoubleOrTriple(
      inputs.length > 0 ? inputs[0] : 0,
      inputs.length > 1 ? inputs[1] : 0,
    ),
  ),
  ExerciseItem(
    title: "Root or Square",
    builder: (inputs) => RootOrSquare(inputs.isNotEmpty ? inputs[0] : 0),
  ),

  ExerciseItem(
    title: "Circle Perimeter",
    builder: (inputs) => CirclePerimeter(inputs.isNotEmpty ? inputs[0] : 0),
  ),
  ExerciseItem(
    title: "Midweek Day",
    builder: (inputs) => MidweekDay(inputs.isNotEmpty ? inputs[0].toInt() : 0),
  ),
  ExerciseItem(
    title: "Tax Calculator",
    builder: (inputs) => TaxCalculator(inputs.isNotEmpty ? inputs[0] : 0),
  ),
  ExerciseItem(
    title: "Remainder Finder",
    builder: (inputs) => RemainderFinder(
      inputs.length > 0 ? inputs[0].toInt() : 0,
      inputs.length > 1 ? inputs[1].toInt() : 0,
    ),
  ),
  ExerciseItem(
    title: "Average of Four",
    builder: (inputs) => AverageOfFour(
      inputs.length > 0 ? inputs[0] : 0,
      inputs.length > 1 ? inputs[1] : 0,
      inputs.length > 2 ? inputs[2] : 0,
      inputs.length > 3 ? inputs[3] : 0,
    ),
  ),
];
