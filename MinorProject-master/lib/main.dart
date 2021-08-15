import 'package:flutter/material.dart';
import 'package:flutter_application_3/account.dart';
import 'package:flutter_application_3/login_register.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Minor",
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginRegister();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_HjODo4PqGpv2Z9',
      'amount': 180000,
      'name': 'Akshat',
      'description': 'Payment',
      'prefill': {
        'contact': '7014024496',
        'email': 'akshatshrivastava702@gmail.com'
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      // debugPrint(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME SCREEN"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 05,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 10),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Account()));
                        },
                        child: Text(
                          "7014024496",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginRegister()));
                  },
                  child: Text(
                    "Order History",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )),
              leading: Icon(Icons.menu),
            ),
            ListTile(
              title: Text(
                "Help & support",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              leading: Icon(Icons.call),
            ),
            ListTile(
                title: Text(
                  "Updates",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                leading: Icon(Icons.update)),
            ListTile(
              title: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text("Sure to log out?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("NO")),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginRegister()));
                                },
                                child: Text("Yes,Logout")),
                          ],
                        );
                      });
                },
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              leading: Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset("assets/image.jpg"),
            ),
            ElevatedButton(
                onPressed: () {
                  openCheckout();
                },
                child: Text("Complete Payment"))
          ],
        ),
      ),
    );
  }
}
