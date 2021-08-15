import 'package:flutter/material.dart';
import 'package:flutter_application_3/login_page.dart';
import 'package:flutter_application_3/register_page.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(400)),
                ),
              ),
              Positioned(
                top: 100,
                left: 120,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    "GO",
                    style: TextStyle(
                        color: Colors.green[400],
                        fontSize: 75,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Positioned(
                top: 230,
                left: 230,
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 285,
                left: 190,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 380,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.green[450],
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 440,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registerpage()));
                  },
                  child: Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                    child: Center(
                      child: Text("REGISTER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
