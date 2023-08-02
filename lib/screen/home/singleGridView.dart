import 'package:flutter/material.dart';

Widget singleGridView(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: Image.asset('asset/image/test.jpg'),
        ),
        Text(
          'Beef Burger',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor),
        ),
        Text(
          'Onions with cheese',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'N1,200',
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
// GridTile(
//     footer: Column(
//       // crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Beef Burger',
//           style: TextStyle(
//               fontWeight: FontWeight.w600,
//               color: Colors.white), //Theme.of(context).primaryColor),
//         ),
//         Text('Onion with Cheese'),
//         const SizedBox(height: 5),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text('N 1200'),
//             IconButton.filled(
//               onPressed: () {},
//               icon: const Icon(Icons.add),
//             ),
//           ],
//         )
//       ],
//     ),
//     child: Image.asset('asset/image/test.jpg'),
//   );