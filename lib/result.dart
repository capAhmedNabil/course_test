import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'you are ... strange?!';
    } else {
      resultText = 'you are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            onPressed: resetHandler,
            child: const Text(
              'restart quiz?!',
            ),
          ),
        ],
      ),
    );
  }
}
