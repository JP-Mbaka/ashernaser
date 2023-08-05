import 'package:ashernaser/model/productModel.dart';
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
                  height: MediaQuery.of(context).size.height * 0.75,
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
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                // margin: const EdgeInsets.only(
                //   top: 500,
                //   left: 60,
                // ),
                // padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  child: Column(
                    children: [
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
              Text('data'),
              Text('data'),
            ],
          ),
        ],
      ),
    );
  }
}
