import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  @override
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
                Row(
                  children: [
                    const Text(
                      'Address',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit/Add',
                        style: TextStyle(fontSize: 9),
                      ),
                    )
                  ],
                ),
                // ListView.builder(itemBuilder: (context, index) => Center()),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      'Payment',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit/Add',
                        style: TextStyle(fontSize: 9),
                      ),
                    )
                  ],
                ),
                // ListView.builder(itemBuilder: (context, index) => Center()),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('N17.00'),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Confirm'),
                      icon: const Icon(Icons.login),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
