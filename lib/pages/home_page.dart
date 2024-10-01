import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget{
  final List<Item> items =[
    Item('Asus ROG Zephyrus', 'Rp. 43.999.000,00','assets/asus_rog_zephyrus.jpg'),
    // Item('Lenovo Legion 5 PRO', 'Rp. 23.699.000,00', 'assets/lenovo_legion_5_pro'),
  ];
  
  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("BELANJA")),
    body: Container(
      margin: EdgeInsets.all(8),
      child: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context, '/item'
              );
            },
            child: Card(
              child: Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(child: Text(item.name)),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}
}