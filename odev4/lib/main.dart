import 'package:flutter/material.dart';
import 'views/product_grid.dart';
import 'views/product_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> productList = [];
  int selectedProductIndex = -1;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 30; i++) {
      productList.add('urun$i');
    }
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedProductIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Odev6'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              ProductGrid(
                productList: productList,
                selectedProductIndex: selectedProductIndex,
              ),
              const SizedBox(height: 20),
              ProductList(
                productList: productList,
                onProductTap: updateSelectedIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
