import 'package:flutter/material.dart';

class DataMahasiswa extends StatefulWidget {
  const DataMahasiswa({super.key});

  @override
  State<DataMahasiswa> createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa> {
  TextEditingController studentname = TextEditingController();
  TextEditingController coursename = TextEditingController();
  TextEditingController credit = TextEditingController();
  String namestudent = "";
  String namecourse = "";
  String namecredit = "";
  void getStudentData() {
    setState(() {
      namestudent = studentname.text;
      namecourse = coursename.text;
      namecredit = credit.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Mahasiswa Teknologi Informasi",
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
              padding:  EdgeInsets.fromLTRB(40, 30, 40, 30),
              child:  Text("Data Mahasiswa",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: studentname,
                decoration: const InputDecoration(
                  labelText: "Student Name",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter student name",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
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
                maxLength: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: coursename,
                decoration: const InputDecoration(
                  labelText: "Course Name",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter course name",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.add_rounded,
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
                maxLength: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: credit,
                decoration: const InputDecoration(
                  labelText: "Credit",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "enter credit",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.numbers_rounded,
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
                maxLength: 30,
              ),
            ),
            SizedBox(
              width: 160,
              height: 60,
              child: ElevatedButton(
                onPressed: getStudentData,
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
                  "Entri Data Student",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.fromLTRB(40, 40, 40, 0),
              child: Text(
                "Student Data : \nStudent Name : $namestudent \nCourse Name : $namecourse \nSKS : $namecredit",
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
