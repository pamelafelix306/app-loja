import 'package:flutter/material.dart';

import '../widgets/products_grid_widget.dart';

enum FilterOptions {
  OnlyFavorites,
  ShowAll,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var showOnlyFavs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My e-Com Platform'),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOptions.OnlyFavorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.ShowAll,
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                showOnlyFavs = selectedValue == FilterOptions.OnlyFavorites;
              });
            },
          )
        ],
      ),
      body: ProductsGridWidget(showOnlyFavs),
    );
  }
}
