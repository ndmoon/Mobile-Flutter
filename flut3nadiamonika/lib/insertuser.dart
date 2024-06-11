import 'dart:convert';

import 'package:flut3nadiamonika/listalluser.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InsertUser extends StatefulWidget {
  const InsertUser({super.key});

  @override
  State<InsertUser> createState() => _InsertUserState();
}

class _InsertUserState extends State<InsertUser> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();

  void clearText() {
    _username.clear();
    _password.clear();
    _email.clear();
    _address.clear();
  }

  Future<void> insertNewUser() async {
    String urlInsertUser =
        "https://nadiamonikaputri.000webhostapp.com/insertuser.php";
    try {
      var responseInsert = await http.post(Uri.parse(urlInsertUser), body: {
        "username": _username.text.toString(),
        "password": _password.text.toString(),
        "email": _email.text.toString(),
        "address": _address.text.toString(),
      });
      var newUser = json.decode(responseInsert.body);
      if (newUser == "true") {
        print("Data User baru berhasil ditambahkan");
      } else {
        print("Data User baru gagal ditambahkan");
      }
    } catch (exc) {
      print(exc);
    }
  }
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  // TextEditingController email = TextEditingController();
  // TextEditingController address = TextEditingController();

  // String nameusername = "";
  // String namepassword = "";
  // String nameemail = "";
  // String nameaddress = "";

  // void getUserData() {
  //   setState(() {
  //     // nameusername = username.text;
  //     // namepassword = password.text;
  //     // nameemail = email.text;
  //     // nameaddress = address.text;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New User",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        //agar semua komponen berada ditengah baik itu vertikal atau horizontal
        child: Column(
          //komponen vertikal, child karna ada satu komponen didalamnya
          mainAxisAlignment:
              MainAxisAlignment.center, //center yg berada di tengah
          children: <Widget>[
            //children karna ada banyak komponen didalamnya, disesuaikan dengan kebutuhan system
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: Text("Add User",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter username",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.face_rounded,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _password,
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter password",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.security_rounded,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter email",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.email_rounded,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _address,
                decoration: const InputDecoration(
                  labelText: "Address",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter address",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 160,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  insertNewUser();
                  clearText();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ListAllUser()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade100,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                child: const Text(
                  "Add User",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
