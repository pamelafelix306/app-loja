import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/product_tile_item_widget.dart';
import '../widgets/sidebar.widget.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';

  @override
  Widget build(BuildContext context) {
    final productsProv = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Products'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      drawer: SidebarWidget(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productsProv.items.length,
          itemBuilder: (ctx, i) => Card(
            child: ProductTileItemWidget(
              productsProv.items[i].title,
              productsProv.items[i].imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
