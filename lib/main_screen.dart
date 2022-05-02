import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc_flutter/result_screen.dart';
import 'icon_content.dart';
import 'result_screen.dart';
import 'calculator_imc.dart';

const activeColorCard = Color(0XFF9E9E9E);
const inactiveColorCard = Color(0xFF7E7E7E);

enum Gender {
  masculine,
  feminine,
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender genderSelected = Gender.masculine;
  int height = 170;
  int weight = 70;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF9E9E9E),
        title: const Text(
          'CALCULADORA DE IMC',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = Gender.masculine;
                      });
                    },
                    child: StandardCard(
                      color: genderSelected == Gender.masculine
                          ? activeColorCard
                          : inactiveColorCard,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        description: 'MASCULINO',
                        colorGender: Color(0xFF0084C4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = Gender.feminine;
                      });
                    },
                    child: StandardCard(
                      color: genderSelected == Gender.feminine
                          ? activeColorCard
                          : inactiveColorCard,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        description: 'FEMININO',
                        colorGender: Color(0xFFff0F9B),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: StandardCard(
                    color: const Color(0xFF9E9E9E),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'ALTURA',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'cm',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                        Slider(
                          activeColor: const Color(0xFF0084C4),
                          inactiveColor: const Color(0xFF8D8E98),
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: StandardCard(
                    color: const Color(0xFF9E9E9E),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'PESO',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          weight.abs().toString(),
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: const Color(0xFF7E7E7E),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: const Color(0xFF7E7E7E),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    color: const Color(0xFF9E9E9E),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'IDADE',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          age.abs().toString(),
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: const Color(0xFF7E7E7E),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: const Color(0xFF7E7E7E),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorIMC calc =
                  CalculatorIMC(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    setTitle: calc.getTitle(),
                    setCalculate: calc.calculate(),
                    setCaption: calc.getCaption(),
                  ),
                ),
              );
            },
            child: Container(
              child: const Center(
                child: Text(
                  'CALCULAR',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              color: const Color(0xFF0084C4),
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}

class StandardCard extends StatelessWidget {
  const StandardCard({Key? key, required this.color, required this.cardChild})
      : super(key: key);
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
