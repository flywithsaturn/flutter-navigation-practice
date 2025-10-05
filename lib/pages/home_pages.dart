import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List<Item> items = const [
    Item(
      name: 'Sugar',
      price: 5000,
      stock: 50,
      rating: 4.5,
      image: 'assets/sugar.jpg',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      stock: 30,
      rating: 4.2,
      image: 'assets/salt.jpg',
    ),
    // Tambahkan item lain sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marketplace Demo')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(item: item);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.deepPurple[50],
            child: const Text(
              'Satrio Wisnu Adi Pratama - 2341720219',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
