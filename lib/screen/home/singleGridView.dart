import 'package:ashernaser/screen/home/singleProductView.dart';
import 'package:flutter/material.dart';

Widget singleGridView(
  BuildContext context,
  String title,
  String desc,
  double price,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => Product(
                title: title,
                desc: desc,
                price: price,
              ),
            ),
          ),
          child: SizedBox(
            height: 150,
            width: 150,
            child: Hero(
              tag: title,
              child: Image.asset(
                'asset/image/test.jpg',
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor),
        ),
        Text(
          desc,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
              ),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
