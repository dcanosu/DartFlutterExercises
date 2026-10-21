import 'package:flutter/material.dart';
import 'exercises_registry.dart';
import 'exercise_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter OOP Exercises',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainMenuScreen(),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAIN MENU'),
      ),
      body: ListView.builder(
        itemCount: allExercises.length,
        itemBuilder: (context, index) {
          final exercise = allExercises[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(exercise.title),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseDetailScreen(exerciseItem: exercise),               ),
              );
            },
          );
        },
      ),
    );
  }
}