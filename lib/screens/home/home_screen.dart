import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Item> items = [
    Item(name: "Gold 24K", price: 6200, unit: "gram"),
    Item(name: "Silver Bar", price: 72000, unit: "kg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gold & Silver Prices"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          // USD to INR (static for now)
          Text(
            "USD → INR: ₹83.12",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ItemCard(item: items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
