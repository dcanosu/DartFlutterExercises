import 'package:flutter/material.dart';

import 'exercises_registry.dart';

class ExerciseDetailScreen extends StatefulWidget {
  final ExerciseItem exerciseItem;

  const ExerciseDetailScreen({super.key, required this.exerciseItem});
  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _run() {
    setState(() {
      final text = _controller.text;
      final parts = text.split(RegExp(r'[\s,]+'));

      List<double> inputs = [];
      for (var part in parts) {
        if (part.isNotEmpty) {
          final val = double.tryParse(part);
          if (val != null) {
            inputs.add(val);
          }
        }
      }

      try {
        final exercise = widget.exerciseItem.builder(inputs);

        _result = exercise.execute();
      } catch (e) {
        _result = "Result: Error en los datos de entrada.";
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
            const Text(
              "Ingrese el valor o los valores separados por espacios o comas\n(Ej: para promediar 4 números escribe: 10, 20, 30, 40):",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valores de entrada',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _run,
              child: const Text('Calcular Resultado'),
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
