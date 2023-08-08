import 'package:flutter/material.dart';

Widget OrderItem(String img, price, title, qty, qtyType, status) {
  return ListTile(
    leading: Image.asset(
      img,
      height: 80,
      width: 80,
    ),
    title: Text('$title ($qty $qtyType)'),
    subtitle: Column(children: [
      Text('N $price'),
      const SizedBox(height: 5),
      Text('$status'),
    ]),
  );
}
