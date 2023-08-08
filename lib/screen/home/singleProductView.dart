import 'package:ashernaser/model/productModel.dart';
import 'package:ashernaser/screen/Cart/order.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  String? title;
  String? desc;
  double? price;

  Product({super.key, this.title, this.desc, this.price});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Hero(
                tag: widget.title!,
                child: Image.asset(
                  'asset/image/test.jpg',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  scale: 0.9,
                ),
              ),
              Positioned(
                top: 30,
                child: IconButton.filled(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.59 -
                MediaQuery.of(context).viewInsets.bottom - MediaQuery.of(context).padding.bottom,
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  color: Colors.blue,
                  // margin: const EdgeInsets.only(
                  //   top: 500,
                  //   left: 60,
                  // ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          widget.title!,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '2%+',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            Text(
                              '245 Custard Bucket',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                              onPressed: () {},
                              icon: const Icon(Icons.remove),
                            ),
                            Text(
                              '1kg',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            IconButton.filled(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(134, 245, 245, 245),
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        left: -4,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.945,
                          // margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.only(top: 15),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                bottom: 15.0,
                                top: 30,
                              ),
                              child: Center(
                                child: Text(
                                  'Lorem ipsum wkaku qajhyh lkiewr wqkuerwqk awku4ta ikuwa4r iu4rj aiu4t paie5t aouk5ya aow4iuy oai45yt angt4 so5i aoi45t a<ou4t54jh awo4j a<ku45 ai2u5hg qa23u5qthqka ',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(50, 15, 7, 7),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontSize: 18,
                                        // fontWeight: FontWeight.w600,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Measurement',
                              style: TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('N17.00'),
                    ElevatedButton.icon(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Order(),
                        ),
                      ),
                      icon: Icon(Icons.shopping_bag),
                      label: Text('Add to Cart'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
