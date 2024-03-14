import 'dart:math';

import 'package:flutter/material.dart';

class QuadraticEquationSolver extends StatefulWidget {
  @override
  _QuadraticEquationSolverState createState() => _QuadraticEquationSolverState();
}

class _QuadraticEquationSolverState extends State<QuadraticEquationSolver> {
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  TextEditingController cController = TextEditingController();
  String result = '';

  void solveQuadraticEquation() {
    double a = double.parse(aController.text);
    double b = double.parse(bController.text);
    double c = double.parse(cController.text);

    double delta = b * b - 4 * a * c;

    if (delta < 0) {
      result = 'Phương trình vô nghiệm';
    } else if (delta == 0) {
      double x = -b / (2 * a);
      result = 'Nghiệm kép của phương trình là: x = $x';
    } else {
      double x1 = (-b + sqrt(delta)) / (2 * a);
      double x2 = (-b - sqrt(delta)) / (2 * a);
      result = 'Nghiệm của phương trình là: x1 = $x1, x2 = $x2';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Giải Phương Trình Bậc 2',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: aController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập hệ số a'),
            ),
            TextField(
              controller: bController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập hệ số b'),
            ),
            TextField(
              controller: cController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập hệ số c'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: solveQuadraticEquation,
              child: Text('Giải'),
            ),
            SizedBox(height: 20.0),
            Text(
              result,
              style: TextStyle(fontSize: 18.0, backgroundColor: Colors.white10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
