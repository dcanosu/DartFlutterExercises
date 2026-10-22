import 'package:flutter/material.dart';

import 'exercises_registry.dart';

class ExerciseDetailScreen extends StatefulWidget {
  final ExerciseItem exerciseItem;

  const ExerciseDetailScreen({super.key, required this.exerciseItem});

  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  late final List<TextEditingController> _controllers;
  String _result = "";

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      widget.exerciseItem.inputLabels.length,
      (_) => TextEditingController(),
    );
  }

  double _parseValidDouble(String value, {bool positiveOnly = false}) {
    final parsed = double.tryParse(value);
    if (parsed == null || (positiveOnly && parsed <= 0)) {
      throw FormatException(
        "Please enter a valid ${positiveOnly ? 'positive ' : ''}number.",
      );
    }
    return parsed;
  }

  int _parseValidInt(String value, {bool positiveOnly = false}) {
    final parsed = int.tryParse(value);
    if (parsed == null || (positiveOnly && parsed <= 0)) {
      throw FormatException(
        "Please enter a valid ${positiveOnly ? 'positive ' : ''}integer.",
      );
    }
    return parsed;
  }

  String _parseValidString(String value) {
    if (value.trim().isEmpty) {
      throw FormatException("Input cannot be empty.");
    }
    if (double.tryParse(value) != null) {
      throw FormatException(
        "Input cannot be a number. Please enter a valid word.",
      );
    }
    return value;
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _run() {
    setState(() {
      try {
      List<String> inputs = _controllers
          .map((controller) => controller.text)
          .toList();

      String title = widget.exerciseItem.title;

      if (title == "Positive Power" || title == "Root or Square" || title == "Tax Calculator") {
          _parseValidDouble(inputs[0]);
        } else if (title == "Circle Perimeter") {
          _parseValidDouble(inputs[0], positiveOnly: true);
        } else if (title == "Midweek Day" || title == "Factorial Finder" || title == "In-Range Validator") {
          _parseValidInt(inputs[0], positiveOnly: true);
        } else if (title == "Double or Triple" || title == "Remainder Finder" || title == "Average of Four") {
          for (var input in inputs) {
            _parseValidDouble(input);
          }
        } else if (title == "Smallest of Five") {
          for (var input in inputs) {
            _parseValidInt(input);
          }
        } else if (title == "String Length" || title == "Vowel Counter") {
          _parseValidString(inputs[0]);
        } else if (title == "Fraction Difference") {
          for (var input in inputs) {
            _parseValidDouble(input);
          }
        }

        final exercise = widget.exerciseItem.builder(inputs);
        _result = exercise.execute();
        
      } catch (e) {
        _result = "Result: ${e.toString().replaceAll("FormatException: ", "")}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.exerciseItem.title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.exerciseItem.description,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),

            Expanded(
              child: ListView.builder(
                itemCount: widget.exerciseItem.inputLabels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: TextField(
                      controller: _controllers[index],
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: widget.exerciseItem.inputLabels[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _run,
              child: const Text('Evaluate result'),
            ),
            const SizedBox(height: 30),
            Text(
              _result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
