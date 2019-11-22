import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_details_screen.dart';
import '../providers/product.dart';

class ProductItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Product product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () => _showDetails(product, context),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(
              product.isFavourite ? Icons.favorite : Icons.favorite_border,
            ),
            onPressed: () {
              product.toggleFavoriteStatus();
            },
            color: Theme.of(context).accentColor,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }

  _showDetails(Product product, BuildContext context) {
    Navigator.of(context).pushNamed(
      ProductDetailsScreen.routeName,
      arguments: product.id,
    );
  }
}
