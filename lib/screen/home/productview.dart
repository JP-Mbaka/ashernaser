import 'package:ashernaser/screen/home/singleGridView.dart';
import 'package:flutter/material.dart';

import '../../dummmy.dart';

Widget productView(BuildContext context) {
  var productList = productsData;
  late String availability;

  return GridView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 250,
      ),
      itemBuilder: (build, index) {
        if (productList[index].available) {
          availability = 'Available';
        } else {
          availability = 'Not available';
        }
        return singleGridView(
          context,
          productList[index].pName,
          availability,
          productList[index].value,
        );
      });
}
