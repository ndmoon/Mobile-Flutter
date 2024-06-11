import 'package:flutter/material.dart';

class FoodOrder extends StatefulWidget {
  const FoodOrder({super.key});

  @override
  State<FoodOrder> createState() => _FoodOrderState();
}

class _FoodOrderState extends State<FoodOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_outlined, color: Colors.white, size: 24),
        title: const Text(
          "Restaurant Menu List",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade200,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_rounded,
              size: 24,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Card(
        margin: const EdgeInsets.fromLTRB(
            10, 20, 10, 20), //atur margin didalam body card
        elevation: 25,
        shadowColor: Colors.green.shade50,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
              width: 2, style: BorderStyle.solid, color: Colors.green),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // agar size dekat dan tidak berantakan
          children: <Widget>[
            const Text(
              "Food List",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),
            ),

            ListTile(
              leading: Image.asset(
                'images/basoaci.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "BASO ACI",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Telur, Dumpling, Bakso daging, Fish ball",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/bakso.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "BAKSO",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Hal ini ditunjukkan dari istilah Bakso berasal dari kata Bak-So",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/ketupat.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "KETUPAT",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Ketupat merupakan jenis makanan yang dibuat dari beras yang dimasukkan ke dalam janur",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/martabak.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "MARTABAK MANIS",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Martabak manis merupakan suatu jenis kue dadar",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/mieGoreng.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "MIE GORENG",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Mie goreng adalah hidangan mie yang dimasak dengan digoreng tumis khas Indonesia.",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/nasiCampur.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "NASI CAMPUR",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Nasi campur (Nasi Rames) adalah salah satu hidangan khas Suku Jawa",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/klepon.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "KLEPON",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Klepon merupakan jajanan tradisional Indonesia yang umumnya terbuat dari tepung ketan putih",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/sate.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "SATE",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              subtitle: const Text(
                "Sate adalah makanan yang terdiri dari potongan daging sapi, daging ayam",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/soto.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "SOTO",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Soto adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran.",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

            ListTile(
              leading: Image.asset(
                'images/supUdang.jpeg',
                width: 100,
                height: 100,
              ),
              title: const Text(
                "SUP UDANG",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              subtitle: const Text(
                "Sup udang adalah sebuah hidangan sup yang disajikan menggunakan udang air tawar atau air laut sebagai hidangan utama.",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 13),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.red,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
