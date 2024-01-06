import 'package:calucltor/component.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class home_scr extends StatefulWidget {
  const home_scr({super.key});

  @override
  State<home_scr> createState() => _home_scrState();
}

class _home_scrState extends State<home_scr> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Align(
                    alignment: Alignment.bottomRight,
                  ),
                  Text(
                    userinput.toString(),
                    style: const TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    answer.toString(),
                    style: const TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Mybutton(
                      title: 'AC',
                      onpress: () {
                        userinput = '';
                        answer = '';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: 'DEL',
                      onpress: () {
                        userinput =
                            userinput.substring(0, userinput.length - 1);
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '%',
                      onpress: () {
                        userinput += '%';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '/',
                      color: Colors.indigo,
                      onpress: () {
                        userinput += '/';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      title: '7',
                      onpress: () {
                        userinput += '7';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '8',
                      onpress: () {
                        userinput += '8';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '9',
                      onpress: () {
                        userinput += '9';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: 'x',
                      color: Colors.indigo,
                      onpress: () {
                        userinput += 'x';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      title: '4',
                      onpress: () {
                        userinput += '4';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '5',
                      onpress: () {
                        userinput += '5';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '6',
                      onpress: () {
                        userinput += '6';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '-',
                      color: Colors.indigo,
                      onpress: () {
                        userinput += '-';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      title: '1',
                      onpress: () {
                        userinput += '1';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '2',
                      onpress: () {
                        userinput += '2';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '3',
                      onpress: () {
                        userinput += '3';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '+',
                      color: Colors.indigo,
                      onpress: () {
                        userinput += '+';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      title: '0',
                      onpress: () {
                        userinput += '0';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '.',
                      onpress: () {
                        userinput += '.';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '00',
                      onpress: () {
                        userinput += '00';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      title: '=',
                      color: Colors.indigo,
                      onpress: () {
                        equalpress();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  void equalpress() {
    String finaluserinput = userinput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    answer = eval.toString();
  }
}
