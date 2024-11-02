import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key, required this.productList, required this.selectedProductIndex});

  final List<String> productList;
  final int selectedProductIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange, width: 10),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 600,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
            final isSelected = index == selectedProductIndex;
            return Container(
              decoration: BoxDecoration(
                color: isSelected ? Colors.red : Colors.orange[100 * (index % 9)],
              ),
              child: Center(child: Text('Urun $index')),
            );
          },
        ),
      ),
    );
  }
}
