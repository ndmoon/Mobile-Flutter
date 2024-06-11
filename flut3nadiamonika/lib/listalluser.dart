import 'dart:convert';

import 'package:flut3nadiamonika/insertuser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListAllUser extends StatefulWidget {
  const ListAllUser({super.key, required this.title});

  final String title;

  @override
  State<ListAllUser> createState() => _ListAllUserState();
}

class _ListAllUserState extends State<ListAllUser> {
  List allUser = [];
  // @override
  // void initState() {
  //   super.initState();
  //   getAllUser();
  // }

  Future<void> deleteUser(String id) async {
    String urlDelete =
        'https://nadiamonikaputri.000webhostapp.com/deleteuser.php';
    try {
      var responseDelete = await http.post(Uri.parse(urlDelete), body: {"id": id});
      var deleteUser = jsonDecode(responseDelete.body);
      if(deleteUser["success"]=="true"){
        print("hapus data user berhasil");
        getAllUser();
      }else{
        print("hapus data user gagal");
      }

    } catch (exc) {
      print(exc);
    }
  }

  Future<void> getAllUser() async {
    String urlAllUser =
        "https://nadiamonikaputri.000webhostapp.com/getdatauser.php";
    try {
      var response = await http.get(Uri.parse(urlAllUser));
      allUser = jsonDecode(response.body);
      setState(() {
        allUser = jsonDecode(response.body);
      });
    } catch (exc) {
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All User",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(CupertinoIcons.person_2_alt,
            size: 24, color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: allUser.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                size: 24,
                color: Colors.red,
              ),
              title: Text(
                allUser[index]["username"],
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                allUser[index]["address"],
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.add_circled_solid,
                        color: Colors.blue, size: 24),
                  ),
                  IconButton(
                    onPressed: () {
                      deleteUser(ListAllUser[index]["id"]);
                      getAllUser();
                    },
                    icon: const Icon(CupertinoIcons.delete_left_fill,
                        color: Color.fromARGB(255, 255, 86, 97), size: 24),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const InsertUser()),
          );
        },
        splashColor: Colors.green.shade700,
        backgroundColor: Colors.red.shade200,
        mini: true,
        child: const Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
