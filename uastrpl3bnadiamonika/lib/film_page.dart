import 'package:flutter/material.dart';
import 'package:uastrpl3bnadiamonika/detil_film.dart';
import 'package:uastrpl3bnadiamonika/filmitem.dart';

class FilmPage extends StatefulWidget {
  const FilmPage({super.key});

  @override
  State<FilmPage> createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              film[index][0],
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: (1 / 1.5)),
              itemCount: film.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DetilFilm(filmIndex: index)),
                    );
                  },
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(film[index][1], scale: 1.0),
                        Text(
                          film[index][3],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            film[index][7],
                            style: const TextStyle(
                                fontSize: 13,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "R Rating",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
