import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amazon Store"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Akun"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Kategori dengan kombinasi Row dan Column
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Column(
                children: [
                  Icon(Icons.phone_android),
                  Text("Elektronik"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.chair),
                  Text("Furniture"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.more_horiz),
                  Text("Lainnya"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Produk pertama
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Produk 1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text("4.5"),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("Rp 150.000"),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(Icons.local_shipping),
                    SizedBox(width: 4),
                    Text("Estimasi 2-3 hari"),
                  ],
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: ElevatedButton(onPressed: () {}, child: const Text("Beli")),
                )
              ],
            ),
          ),
          // Produk kedua
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Produk 2", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text("4.8"),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("Rp 250.000"),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Icon(Icons.local_shipping),
                    SizedBox(width: 4),
                    Text("Estimasi 1-2 hari"),
                  ],
                ),
                const SizedBox(height: 8),
                ElevatedButton(onPressed: () {}, child: const Text("Beli"))
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Banner Promo
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue.shade100,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  Icon(Icons.discount),
                  Text("Diskon")
                ]),
                Column(children: [
                  Icon(Icons.card_giftcard),
                  Text("Gratis Ongkir")
                ]),
                Column(children: [
                  Icon(Icons.local_shipping),
                  Text("Pengiriman")
                ]),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Footer promo
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.orange.shade100,
            child: const Center(
              child: Text(
                "Belanja Sekarang & Dapatkan Promo Menarik!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
