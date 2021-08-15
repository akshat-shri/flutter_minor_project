import 'package:flutter/material.dart';
import 'package:flutter_application_3/address.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account"),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 200,
                    color: Colors.green,
                  ),
                  Text(
                    "7014024496",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      size: 30,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(
                      Icons.email,
                      size: 30,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      size: 30,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Address()));
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Add Address",
                    style: TextStyle(color: Colors.green, fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
