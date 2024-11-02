import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.productList, required this.onProductTap});

  final List<String> productList;
  final Function(int) onProductTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => onProductTap(index),
            splashColor: Colors.black.withOpacity(0.5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.orange, width: 10),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 160.0,
              child: Center(child: Text('Item $index')),
            ),
          );
        },
      ),
    );
  }
}
