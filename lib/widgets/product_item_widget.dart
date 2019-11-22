import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';

class ProductItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItemWidget(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () => _showDetails(context),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
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

  _showDetails(BuildContext context) {
    Navigator.of(context).pushNamed(
      ProductDetailsScreen.routeName,
      arguments: id,
    );
  }
}
