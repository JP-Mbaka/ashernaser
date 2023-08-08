import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height + 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              const Center(
                child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Text('Delivery Timeline'),
                SizedBox(
                  child: Column(
                    children: [
                      Text('Description'),
                      InkWell(
                        onTap: () {}, //Load a modal List of Item views
                        child: ListTile(
                          leading: Image.asset(
                            'asset/image/test.jpg',
                            height: 80,
                            width: 100,
                          ),
                          title: Text('Order ID: AI123432'),
                          subtitle: Text('N 12334'),
                          subtitleTextStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
