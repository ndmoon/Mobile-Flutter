import 'package:flutter/material.dart';
import 'package:uastrpl3bnadiamonika/filmitem.dart';

class DetilFilm extends StatefulWidget {
  const DetilFilm({super.key, this.filmIndex});
  final filmIndex;

  @override
  State<DetilFilm> createState() => _DetilFilmState();
}

class _DetilFilmState extends State<DetilFilm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              film[widget.filmIndex][0],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              film[widget.filmIndex][1],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              film[widget.filmIndex][2],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              film[widget.filmIndex][3],
              scale: 1.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              film[widget.filmIndex][4],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              film[widget.filmIndex][5],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              film[widget.filmIndex][6],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              film[widget.filmIndex][7],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Class",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
              )
            ],
          )
        ],
      ),
    );
  }
}
