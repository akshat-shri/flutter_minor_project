import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
      ),
      Positioned(
        bottom: 0.0,
        child: Container(
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65), topRight: Radius.circular(65))),
        ),
      ),
      Positioned(
          top: 80,
          left: 20,
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.cancel,
                color: Colors.green[700],
                size: 30,
              ))),
      Positioned(
        top: 140,
        left: 120,
        child: Container(
          height: 150,
          width: 150,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green[400]),
          child: Center(
              child: Text(
            "LOGIN",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          )),
        ),
      ),
      Positioned(
        top: 340,
        left: 20,
        child: Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 1.5,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "EMAIL",
              hintStyle: TextStyle(fontSize: 20),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.email),
            ),
          ),
        ),
      ),
      Positioned(
        top: 400,
        left: 20,
        child: Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 1.5,
            ),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
                hintText: "PASSWARD",
                hintStyle: TextStyle(fontSize: 20),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.lock)),
          ),
        ),
      ),
      Positioned(
        top: 550,
        left: 20,
        child: Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));
              },
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    ])));
  }
}
