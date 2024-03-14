import 'package:flutter/material.dart';
import 'package:name/Srceen/quadratic_equation_solver.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quadratic Equation Solver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: QuadraticEquationSolver(),
    );
  }
}
