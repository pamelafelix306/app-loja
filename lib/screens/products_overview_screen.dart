import 'package:flutter/material.dart';

import '../widgets/products_grid_widget.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My e-Com Platform'),
      ),
      body: ProductsGridWidget(),
    );
  }
}
