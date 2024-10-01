import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  Widget titlesection = Container (
  padding: const EdgeInsets.all(16.0),
  child: Row (
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: const Text(
                'Asus ROG Zephyrus M16',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
              ),
            ),
            const Text(
              'Rp. 43.999.000,00',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    ],
  )
  );
   return MaterialApp(
    title: 'Flutter Layout Demo',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Detail Barang'),
         leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/asus_rog_zephyrus.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          titlesection,
          // buttonSection,
          // textSection,
        ],
      ),
    ),
  );
  }
}