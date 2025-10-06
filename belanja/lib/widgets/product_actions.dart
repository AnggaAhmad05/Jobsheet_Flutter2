import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ProductActions extends StatefulWidget {
  final Item item;

  const ProductActions({super.key, required this.item});

  @override
  _ProductActionsState createState() => _ProductActionsState();
}

class _ProductActionsState extends State<ProductActions> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Quantity:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.remove_circle_outline),
              onPressed: () {
                if (quantity > 1) {
                  setState(() {
                    quantity--;
                  });
                }
              },
            ),
            Text('$quantity', style: const TextStyle(fontSize: 16)),
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {
                if (quantity < widget.item.stock) {
                  setState(() {
                    quantity++;
                  });
                }
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${widget.item.name} ($quantity) added to cart',
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Proceeding to buy ${widget.item.name}'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
