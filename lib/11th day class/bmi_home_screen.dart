import 'package:bmi_calculator/11th%20day%20class/bmi_details_page.dart';
import 'package:flutter/material.dart';

class BmiHomeScreen extends StatefulWidget {
  const BmiHomeScreen({super.key});

  @override
  State<BmiHomeScreen> createState() => _BmiHomeScreenState();
}

class _BmiHomeScreenState extends State<BmiHomeScreen> {
  Color appBarColor = Color(0xff03061C);
  Color bgColor = Color(0xff03061b);
  Color cardColor = Color(0xff171830);
  bool isMale = true;
  double height = 120;
  int age = 20;
  double weight = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: _myStyle(cl: Colors.white, size: 30, fw: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale == true ? Colors.blue : cardColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 60,
                                color: Colors.white,
                              ),
                              Text(
                                "Male",
                                style: _myStyle(
                                    cl: Colors.white,
                                    fw: FontWeight.bold,
                                    size: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                isMale == false ? Colors.pinkAccent : cardColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 60,
                                color: Colors.white,
                              ),
                              Text(
                                "Female",
                                style: _myStyle(
                                    cl: Colors.white,
                                    fw: FontWeight.bold,
                                    size: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: _myStyle(
                          cl: Colors.white,
                          fw: FontWeight.bold,
                          size: 22,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.toStringAsFixed(0)}",
                            style: _myStyle(
                              cl: Colors.white,
                              fw: FontWeight.bold,
                              size: 22,
                            ),
                          ),
                          Text(
                            "CM",
                            style: _myStyle(
                              cl: Colors.white,
                              fw: FontWeight.bold,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          activeColor: Colors.orangeAccent,
                          inactiveColor: Colors.blue,
                          thumbColor: Colors.red,
                          min: 70,
                          max: 220,
                          value: height,
                          onChanged: (vlu) {
                            setState(() {
                              height = vlu;
                            });
                          }),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: _myStyle(
                                  cl: Colors.white,
                                  fw: FontWeight.bold,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "${weight}",
                                style: _myStyle(
                                  cl: Colors.white,
                                  fw: FontWeight.bold,
                                  size: 25,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (weight > 1) {
                                        setState(() {
                                          weight--;
                                        });
                                      }
                                    },
                                    child: Icon(Icons.remove),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: _myStyle(
                                    cl: Colors.white,
                                    fw: FontWeight.bold,
                                    size: 30),
                              ),
                              Text(
                                "${age}",
                                style: _myStyle(
                                  cl: Colors.white,
                                  fw: FontWeight.bold,
                                  size: 25,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (age > 1) {
                                        setState(() {
                                          age--;
                                        });
                                      }
                                    },
                                    child: Icon(Icons.remove),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
              color: bgColor,
              minWidth: double.infinity,
              height: 50,
              onPressed: () {
                double h = height / 100;
                double w = weight;
                double heightSquare = h * h;
                double result = w / heightSquare;
                // print("$result");
                var outcome = "";
                if (result >= 25) {
                  outcome = "Normal Weight";
                } else if (result >= 18) {
                  outcome = "Under weight";
                } else {
                  outcome = "Contact to the Doctor";
                }
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BmiDetailsPage(
                          outcome: outcome.toString(),
                        )));
              },
              child: Text(
                "Calculate",
                style:
                    _myStyle(cl: Colors.white, fw: FontWeight.bold, size: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_myStyle({Color? cl, FontWeight? fw, double? size}) {
  return TextStyle(color: cl, fontWeight: fw, fontSize: size);
}
