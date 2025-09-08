import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            item.imageUrl,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            "Rp ${item.price}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 8),
          Text("Stok: ${item.stock}"),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber),
              const SizedBox(width: 4),
              Text(item.rating.toString()),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: const Text(
          "Siti Faiqotul Kifiyah - 362458302021",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
