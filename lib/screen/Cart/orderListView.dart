import 'package:flutter/material.dart';

Widget OrderItem(String img, price, title, qty, qtyType, status, Color color) {
  return Dismissible(
    onDismissed: (_) {},
    key: ValueKey(title),
    background: Icon(
      Icons.delete,
      color: color,
    ),
    child: ListTile(
      leading: Image.asset(
        img,
        height: 80,
        width: 80,
      ),
      title: Text('$title ($qty $qtyType)'),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('N $price'),
        const SizedBox(height: 5),
        Text('$status'),
      ]),
    ),
  );
}
