import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart' show Orders;
import '../widgets/order_item_widget.dart';
import '../widgets/sidebar.widget.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final ordersProv = Provider.of<Orders>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Orders'),
        ),
        drawer: SidebarWidget(),
        body: ListView.builder(
          itemCount: ordersProv.orders.length,
          itemBuilder: (ctx, i) => OrderItemWidget(ordersProv.orders[i]),
        ));
  }
}
