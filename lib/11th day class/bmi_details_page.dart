import 'package:flutter/material.dart';

class BmiDetailsPage extends StatefulWidget {
  final outcome;
  BmiDetailsPage({super.key, this.outcome});

  @override
  State<BmiDetailsPage> createState() => _BmiDetailsPageState();
}

class _BmiDetailsPageState extends State<BmiDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "${widget.outcome}",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
