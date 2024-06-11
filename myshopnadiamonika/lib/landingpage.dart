import 'package:flutter/material.dart';
import 'package:myshopnadiamonika/listalluser.dart';
import 'package:myshopnadiamonika/listproduct.dart';
import 'package:myshopnadiamonika/productitems.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _search = TextEditingController();
  void clearText() {
    _search.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'lib/assets/images/logoshop.png',
                scale: 0.4,
              ),
            ),
          ],
        ),
        title: const Text(
          "MoShopping",
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          // Row(
          //   children: [
          //     TextField(
          //       controller: _search,
          //       decoration: const InputDecoration(
          //         hintText: "Search Product",
          //         hintStyle: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.normal,
          //         ),
          //         prefixIcon: Icon(
          //           Icons.search_rounded,
          //           color: Colors.black,
          //         ),
          //         border: OutlineInputBorder(
          //           borderSide: BorderSide(
          //             width: 2,
          //             style: BorderStyle.solid,
          //             color: Colors.white,
          //           ),
          //           borderRadius: BorderRadius.all(Radius.circular(25)),
          //         ),
          //         contentPadding: EdgeInsets.symmetric(horizontal: 20),
          //       ),
          //     ),
          //   ],
          // ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListAllUser()),
              );
            },
            icon: const Icon(
              Icons.person_rounded,
              color: Colors.black,
            ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.shopping_cart,
          //     color: Colors.black,
          //   ),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.menu,
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 219, 239, 255),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Welcome to MoShopping!",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // Center(
            //   child: Stack(
            //     children: [
            //       Container(
            //         width: 130,
            //         height: 130,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         child: Image.asset(
            //           'lib/assets/images/logoshop.png',
            //           scale: 0.4,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Yuk ke MoShopping\nBelanja Murah Belanja Mudah",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search Products',
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: (1 / 1.5)),
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    //sama dengan cardview, inkwell dipakai karna ada pkai ontap
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LandingPage()),
                      );
                    },
                    child: Material(
                      elevation: 20,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Image.asset(product[index][1], scale: 2.5),
                          Text(
                            product[index][0],
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(
                width: 500,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListProducts()),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text(
                    "Tampilan Lebih Banyak",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 15, 96, 218),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
