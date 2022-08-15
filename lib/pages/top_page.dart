import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  RangeValues _currentRangeValues = const RangeValues(100, 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calc'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Ink(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 2 - 30,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,
                      children: [
                        InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            print('hello');
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.male,
                                  color: Colors.white,
                                  size: 80,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            print('hello');
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.female,
                                  color: Colors.white,
                                  size: 80,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Ink(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '173cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        RangeSlider(
                          values: _currentRangeValues,
                          max: 200,
                          min: 100,
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Ink(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 2 - 30,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,
                      children: [
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'WEIGHT',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '63',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'AGE',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '29',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    iconSize: 40,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 40,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Calc!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
