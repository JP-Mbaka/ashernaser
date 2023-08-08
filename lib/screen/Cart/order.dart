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
          const Center(
            child: Text('Order'),
          ),
          const SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
              color: Colors.white,
            ),
            child: ListView.builder(
              itemBuilder: (context, index) => OrderItem('asset/image/test.jpg',
                  '12.00', 'Pineapple', '12', 'KG', 'available'),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('N17.00'),
              ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CheckOut(),
                  ),
                ),
                icon: Icon(Icons.shopping_bag),
                label: Text('Checkout'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
