import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ProductDescription extends StatelessWidget {
  final Item item;

  const ProductDescription({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          'This is a high-quality ${item.name.toLowerCase()} suitable for all your needs. Perfect for cooking or household use.',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
