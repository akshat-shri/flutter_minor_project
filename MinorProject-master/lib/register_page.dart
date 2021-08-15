import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
        ),
        Positioned(
          bottom: 0.5,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    topRight: Radius.circular(65))),
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
                  size: 35,
                ))),
        Positioned(
          top: 130,
          left: 115,
          child: Container(
            height: 140,
            width: 140,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green[600]),
            child: Center(
                child: Text(
              "REGI               STER",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Positioned(
          top: 310,
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
                  hintText: "DISPLAY NAME",
                  hintStyle: TextStyle(fontSize: 20),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Positioned(
          top: 370,
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
                  prefixIcon: Icon(Icons.email)),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Positioned(
          top: 430,
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
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Positioned(
          top: 550,
          left: 17,
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
                  "CREATE ACCOUNT",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
