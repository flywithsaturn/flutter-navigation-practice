import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_pages.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List<Item> items = const [
    Item(
      name: 'Sugar',
      price: 5000,
      stock: 10,
      rating: 4.5,
      image: 'assets/sugar.jpg',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      stock: 5,
      rating: 4.0,
      image: 'assets/salt.jpg',
    ),
    // Bisa ditambahkan produk lain
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Barang')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75, // tinggi/width
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ItemPage(item: item)),
                );
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: item.name,
                      child: Image.asset(
                        item.image,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rp${item.price}',
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Stok: ${item.stock}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Text(
                                '${item.rating}',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
