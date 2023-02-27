import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ABC(),
  ));
}

class ABC extends StatefulWidget {
  const ABC({Key? key}) : super(key: key);

  @override
  State<ABC> createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  double D = 0;
  String w = '0';
  double m = 0;
  int la = 0;
  double ans = 0;
  dynamic c = Colors.white;
  dynamic t = Colors.white;

  dynamic a = Colors.white;
  dynamic b = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: -400,end: 0),
                  duration: const Duration(milliseconds: 1500),
                  builder: (context,double degree,widget){
                    return Transform.translate(offset: Offset(degree, 0),child: widget,);
                  },
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        c = Colors.pink;
                        t = Colors.pink;
                        a = Colors.white;
                        b = Colors.white;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1E33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Icon(Icons.female_outlined, size: 150, color: c),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 20,
                              color: t,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 400,end: 0),
                  duration: const Duration(milliseconds: 1500),
                  builder: (context,double degree,widget){
                    return Transform.translate(offset: Offset(degree, 0),child: widget,);
                  },
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        a = Colors.pink;
                        b = Colors.pink;
                        c = Colors.white;
                        t = Colors.white;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1E33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Icon(Icons.male_outlined, size: 150, color: a),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 20,
                              color: b,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(5)),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end: 1),
              duration: const Duration(milliseconds: 1500),
              builder: (context,double val,widget){
                return Transform.scale(
                  scale: val,
                  child: widget,
                );
              },
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0XFF626473),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text("HEIGHT",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    const Padding(padding: EdgeInsets.all(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${D.toInt()}",
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "\ncm",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        min: 0,
                        max: 200,
                        thumbColor: const Color(0XFF555555),
                        activeColor: const Color(0XFFf5C1D1),
                        value: D,
                        divisions: 200,
                        onChanged: (value) {
                          setState(() {
                            D = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: -400,end: 0),
                  duration: const Duration(milliseconds: 1500),
                  builder: (context,double degree,widget){
                    return Transform.translate(offset:  Offset(degree, 0),child: widget,);
                  },
                  child: Container(
                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1E33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          const Text(
                            "weight",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "\n",
                            ),
                            onChanged: (la) {
                              w = la;
                            },
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      )),
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 400,end: 0),
                  duration: const Duration(milliseconds: 1500),
                  builder: (context,double degree,widget){
                    return Transform.translate(offset:  Offset(degree, 0),child: widget,);
                  },
                  child: Container(
                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1E33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Answer",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Text(
                            "${ans.toInt()}",
                            style: const TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(5)),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end: 1),
              duration: const Duration(milliseconds: 1500),
              builder: (context,double val,widget){
                return Transform.scale(
                  scale: val,
                  child: widget,
                );
              },
              child: InkWell(
                onTap: () {
                  setState(() {
                    m = D / 100;
                    ans = int.parse(w) / (m * m);
                  });
                },
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEB1555),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0XFF090E21),
    );
  }
}
