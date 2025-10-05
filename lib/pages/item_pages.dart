import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key}); // tidak perlu parameter item

  @override
  Widget build(BuildContext context) {
    // Ambil data yang dikirim dari Homepage
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name)),
      body: Center(
        child: Text(
          'Sell with price Rp${itemArgs.price}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
