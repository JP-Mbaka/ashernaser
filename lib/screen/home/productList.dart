import 'package:ashernaser/screen/home/productview.dart';
import 'package:ashernaser/widget/showBottomNavigation.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // Widget showModal() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Asher\'n\'Aser'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu_outlined,
                  ),
                ),
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_outlined,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Good Morning',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('Vegetables trade market',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).primaryColor,
                  fontStyle: FontStyle.italic,
                )),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Available',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Preorder',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Favourite',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              IconButton.filled(
                onPressed: () {},
                icon: Icon(
                  Icons.analytics_outlined,
                ),
              ),
            ],
          ),
          SizedBox(height: 460, child: productView(context)),
          BottomNav(context)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'map',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.shopping_cart_checkout),
        //   label: 'cart',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.favorite),
        //   label: 'favourites',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'profile',
        ),
      ]),
    );
  }
}
