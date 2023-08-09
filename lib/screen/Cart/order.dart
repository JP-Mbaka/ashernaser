import 'package:ashernaser/screen/Cart/checkout.dart';
import 'package:ashernaser/screen/Cart/orderListView.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height + 20),
          Center(
            child: Text(
              'Order',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).secondaryHeaderColor),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.765,
            padding: const EdgeInsets.only(top: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Available'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Preorder'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Clear All'),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => OrderItem(
                      'asset/image/test.jpg',
                      '12.00',
                      'Pineapple',
                      '12',
                      'KG',
                      'available',
                      Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.066,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FittedBox(
                  clipBehavior: Clip.hardEdge,
                  child: Text(
                    'N17.00',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CheckOut(),
                    ),
                  ),
                  icon: const Icon(Icons.shopping_bag),
                  label: const Text('Checkout'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
