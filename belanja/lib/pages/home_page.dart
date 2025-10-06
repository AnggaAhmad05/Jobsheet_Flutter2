import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer_widget.dart';
import 'package:belanja/widgets/product_grid.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://tse3.mm.bing.net/th/id/OIP.i_GsYGFiQ1cMCL_58lqidgHaE7?pid=Api&P=0&h=180',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl:
          'https://tse3.mm.bing.net/th/id/OIP.ve3yppzV9KbXxIDAyw72lQHaFj?pid=Api&P=0&h=180',
      stock: 50,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(child: ProductGrid(items: items)),
          const FooterWidget(),
        ],
      ),
    );
  }
}
