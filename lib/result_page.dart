import 'package:flutter/material.dart';
import 'constants.dart';
import 'resusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.result, this.interpertation, this.bmi});

  final String result;
  final String interpertation;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("bmi score".toUpperCase()),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ResuableCard(
              color: kActiveCardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.lightGreen,
                      ),
                    ),
                    Text(
                      bmi,
                      style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      interpertation,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
