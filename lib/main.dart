import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}





class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  double height = 100; //assigning value
  double weight = 50;
  double bmi = 0;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
//return Container();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple[300],

      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Colors.black,
      ),

      //appbar
      body:

      Center(
        heightFactor: 400,
        widthFactor: 400,
        child: Column(
          children: [
            Text(
              "BMI Calculator",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  backgroundColor: Colors.purple[200]), //textstyle
            ),
            SizedBox(
              height: 30,
            ),
            Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                 borderRadius: BorderRadius.circular(12),
                ),
                height: 90,
                width: 150,

                child: Column(
                  children: [
                    Text("Height : ${height.round()}cm"

                    ),
                    Slider(
                      value: height,
                      min: 0,
                      max: 200,

                      onChanged: ((value) {
                        setState(() {
                          height = value;
                        });
                      }),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ), //text


            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
      color: Colors.amberAccent,
      borderRadius: BorderRadius.circular(12),
      ),
      height: 80,
      width: 200,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      FloatingActionButton(
      onPressed: (() => {
      setState(() {
      weight--;
      })
      }),
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
      ),
      Text(
      "Weight :\n ${(weight)} kg",

                        textScaleFactor: 1,
                        textAlign: TextAlign.center,
                      ),
                      FloatingActionButton(
                        onPressed: (() => {
                          setState(() {
                            weight++;
                          })
                        }),
                        tooltip: 'Decrement',
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),

            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState((){
                      flag = !flag;
                      bmi = ((weight / height / height) * 10000);
                      print(bmi);
                    });

                  },
                  child: Text("Calculate"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(
                      24,
                    ),
                    side: BorderSide(color: Colors.black),
                  ),
                )
              ],
            ),

            Visibility(
                child: Text(
                  "BMI = ${bmi = ((weight / height / height) * 10000)}",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
                visible: flag),
            SizedBox(
              height:30,
            ),
            /*Container(
              height:120,
              width:120,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image:Ass
                  fit: BoxFit.fill,
                ),
              ),
            ),*/

          ],
        ),
      ),
      //column
    ); //scaffold
  }
}

