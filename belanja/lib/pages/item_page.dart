import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer_widget.dart';
import 'package:belanja/widgets/product_image.dart';
import 'package:belanja/widgets/product_details.dart';
import 'package:belanja/widgets/product_description.dart';
import 'package:belanja/widgets/product_actions.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)?.settings.arguments as Item?;

    if (itemArgs == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(child: Text('No item data provided')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductImage(imageUrl: itemArgs.imageUrl),
                    const SizedBox(height: 16),
                    ProductDetails(item: itemArgs),
                    const SizedBox(height: 16),
                    ProductDescription(item: itemArgs),
                    const SizedBox(height: 16),
                    ProductActions(item: itemArgs),
                  ],
                ),
              ),
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}
