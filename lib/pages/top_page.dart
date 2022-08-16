import 'package:flutter/material.dart';
import '../pages/result_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  String gender = 'male';
  void setGender(String gender) {
    setState(() {
      this.gender = gender;
    });
  }

  double height = 170.0;
  void setHeight(double height) {
    setState(() {
      this.height = height;
    });
  }

  int weight = 50;
  void setWeight(int weight) {
    setState(() {
      this.weight = weight > 0 ? weight : 0;
    });
  }

  int age = 20;
  void setAge(int age) {
    setState(() {
      this.age = age > 0 ? age : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('BMI CALC'),
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
                          onTap: () => setGender('male'),
                          child: Ink(
                            decoration: BoxDecoration(
                              color:
                                  gender == 'male' ? Colors.grey : Colors.black,
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
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.white,
                          onTap: () => setGender('female'),
                          child: Ink(
                            decoration: BoxDecoration(
                              color: gender == 'female'
                                  ? Colors.grey
                                  : Colors.black,
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
                                    color: Colors.white,
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
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '$height',
                                style: const TextStyle(fontSize: 40),
                              ),
                              const TextSpan(
                                text: 'cm',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Slider(
                          value: height,
                          min: 100,
                          max: 200,
                          divisions: 100,
                          onChanged: (double height) => setHeight(height),
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
                              Text(
                                '$weight',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => setWeight(++weight),
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => setWeight(--weight),
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
                              Text(
                                '$age',
                                style: const TextStyle(
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
                                    onPressed: () => setAge(++age),
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 40,
                                    onPressed: () => setAge(--age),
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ResultPage(null, gender, height, weight, age),
              ),
            );
          },
          child: const Text(
            'CALC!',
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
