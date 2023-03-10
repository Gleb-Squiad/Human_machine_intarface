import 'package:chmi/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFe5e5e7),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(
                                226,
                                174,
                                187,
                                1,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Image(
                                image: AssetImage('assets/images/screen.png'),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '??????????????',
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.edit),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFe5e5e7),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 40,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SensorsCard(
                        key: key,
                        name: '??????????????????????',
                        avgValue: '250 K',
                        values: const ['200 K', '300 K'],
                        errors: const [false, false],
                      ),
                      SensorsCard(
                        key: key,
                        name: '?????????????????? ??????????????',
                        avgValue: '32%',
                        values: const ['30%', '34%'],
                        errors: const [true, false],
                      ),
                      SensorsCard(
                        key: key,
                        name: '?????????????????? ??????????',
                        avgValue: '7%',
                        values: const ['12%', '2%'],
                        errors: const [false, true],
                      ),
                      SensorsCard(
                        key: key,
                        name: '?????????????? ????????',
                        avgValue: '15 ????%',
                        values: const ['15 ????', '15 ????'],
                        errors: const [false, true],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
