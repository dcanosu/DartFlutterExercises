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

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _run() {
    setState(() {
      List<double> inputs = [];

      for (var controller in _controllers) {
        final text = double.tryParse(controller.text);
        if (text != null) {
          inputs.add(text);
        } else {
          inputs.add(0.0);
        }
      }

      try {
        final exercise = widget.exerciseItem.builder(inputs);
        _result = exercise.execute();
      } catch (e) {
        _result = "Result: Error executing the exercise: ${e.toString()}";
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
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
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
