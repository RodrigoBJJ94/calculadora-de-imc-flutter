import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key,
      required this.setCalculate,
      required this.setTitle,
      required this.setCaption})
      : super(key: key);

  final String setCalculate;
  final String setTitle;
  final String setCaption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0XFF9E9E9E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(setTitle,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  Text(
                    setCalculate,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 100,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(setCaption,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: const Center(
                child: Text(
                  'RECALCULAR',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              color: const Color(0xFFFF5822),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(bottom: 30),
              width: double.infinity,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
