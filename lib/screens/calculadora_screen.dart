import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  final BoxDecoration boxDeco = BoxDecoration(
    border: Border.all(color: Colors.purple),
  );
  final double boxHeight = 61;

  void handleValue(String value) {
    if (value == "+" || value == "-" || value == "*" || value == "/") {
      operacion = value;
      historial += value;
    } else if (value == "=") {
      try{
        pantalla = "=${historial.interpret()}";
      } catch(e){
        pantalla = "error oprima C para continuar";
      }
    } else if (value == "C") {
      pantalla = "";
      historial = "";
    } else {
      historial += value;
    }

    setState(() {});
  }

  String? operacion;
  String pantalla = '';
  String historial = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  historial,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  pantalla,
                  style: const TextStyle(
                    fontSize: 42,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("C");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('C'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: boxHeight,
                      decoration: boxDeco,
                      alignment: Alignment.center,
                      child: const Text(''),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: boxHeight,
                      decoration: boxDeco,
                      alignment: Alignment.center,
                      child: const Text(''),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("/");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('/'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("9");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('9'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("8");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('8'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("7");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('7'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("+");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('+'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("4");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('4'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("5");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('5'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("6");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('6'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("-");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('-'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("1");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("2");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('2'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("3");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('3'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("*");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('*'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("-");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('-'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("0");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco,
                        alignment: Alignment.center,
                        child: const Text('0'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: boxHeight,
                      decoration: boxDeco,
                      alignment: Alignment.center,
                      child: const Text('-'),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        handleValue("=");
                      },
                      child: Container(
                        height: boxHeight,
                        decoration: boxDeco.copyWith(
                          color: Colors.purple,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '=',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
