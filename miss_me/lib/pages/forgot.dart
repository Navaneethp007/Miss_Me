import 'package:flutter/material.dart';
import 'package:miss_me/pages/home.dart';

import 'package:miss_me/pages/login.dart';

class Pass extends StatefulWidget {
  @override
  _PassState createState() => _PassState();
}

class _PassState extends State<Pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Agent Code"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 30.0,left: 20.0),
            child: Center(
              child: Container(
                  width: 700,
                  height: 50,
                  child: const Text("Agent Code Changer",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
            child: Row(
              children: const [
                Text(
                  "Enter new Code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "New Code",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
            child: Row(
              children: const [
                
                Text(
                  "Re-enter Agent Code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Re-enter code",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            width: 200,
            decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(200)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
