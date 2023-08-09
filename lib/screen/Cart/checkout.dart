import 'package:ashernaser/screen/Cart/chkListView.dart';
import 'package:ashernaser/screen/Cart/orderDetails.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  var isListEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height),
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
              Center(
                child: Text(
                  'Checkout',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).secondaryHeaderColor),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height * 0.775,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
              color: Colors.white,
            ),
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 0),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Address',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit/Add',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    chkListView(),
                    chkListView(),
                    chkListView(),
                    chkListView(),
                    chkListView()
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit/Add',
                        style: TextStyle(fontSize: 11),
                      ),
                    )
                  ],
                ),
                Column(children: [
                  chkListView(),
                  chkListView(),
                  chkListView(),
                  chkListView()
                ]),
                // ListView.builder(
                //     shrinkWrap: true,
                //     padding: const EdgeInsets.only(top: 0),
                //     itemCount: 4,
                //     itemBuilder: (context, index) => chkListView()),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'N17.00',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => OrderDetails()),
                ),
                label: const Text('Confirm'),
                icon: const Icon(Icons.login),
              ),
            ],
          )
        ],
      ),
    );
  }
}
