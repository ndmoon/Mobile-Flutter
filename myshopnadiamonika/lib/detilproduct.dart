import 'package:flutter/material.dart';
import 'package:myshopnadiamonika/productitems.dart';

class DetilProduct extends StatefulWidget {
  const DetilProduct({super.key, this.productIndex});
  final productIndex;

  @override
  State<DetilProduct> createState() => _DetilProductState();
}

class _DetilProductState extends State<DetilProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              product[widget.productIndex][0],
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    product[widget.productIndex][1],
                    scale: 0.7,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            product[widget.productIndex][2],
            style: const TextStyle(
                fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Product Size",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: DropdownButton(
                  items: const [
                    DropdownMenuItem(
                      value: 5,
                      child: Text(
                        "S",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 10,
                      child: Text(
                        "M",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 15,
                      child: Text(
                        "L",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 20,
                      child: Text(
                        "XL",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              width: 250,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
