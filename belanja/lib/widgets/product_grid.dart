import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  final List<Item> items;

  const ProductGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam GridView
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.75, // Rasio ukuran item
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ProductItem(item: item);
        },
      ),
    );
  }
}
