import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/product_item_widget.dart';

class ProductsGridWidget extends StatelessWidget {
  final onlyFavs;

  ProductsGridWidget(this.onlyFavs);

  @override
  Widget build(BuildContext context) {
    final loadedProducts = onlyFavs
        ? Provider.of<Products>(context).favoriteItems
        : Provider.of<Products>(context).items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, index) {
        return ChangeNotifierProvider.value(
          value: loadedProducts[index],
          child: ProductItemWidget(),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
    );
  }
}
