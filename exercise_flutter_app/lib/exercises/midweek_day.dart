import "exercise_base.dart";

class MidweekDay implements Exercise {
  final int day;

  MidweekDay(this.day);

  @override
  String get title => "Midweek Day";

  @override
  String execute() {
    if (day >= 1 && day <= 5) {
      String result;
      switch (day) {
        case 1:
          result = "Monday";
          break;
        case 2:
          result = "Tuesday";
          break;
        case 3:
          result = "Wednesday";
          break;
        case 4:
          result = "Thursday";
          break;
        case 5:
          result = "Friday";
          break;
        default:
          result = "Number out of the working range.";
      }
      return "Result: $result";
    } else {
      return "Result: Number out of the working range.";
    }
  }
}