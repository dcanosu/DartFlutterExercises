import "exercise_base.dart";

class CirclePerimeter implements Exercise {
  final double radius;

  CirclePerimeter(this.radius);

  @override
  String get title => "Circle Perimeter";

  @override
  String execute() {
    if (radius > 0) {
      double perimeter = 2 * 3.14159 * radius;
      return "Result: ${perimeter.toStringAsFixed(2)}";
    } else {
      return "Result: Invalid radius.";
    }
  }
}