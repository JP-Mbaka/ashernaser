import 'package:ashernaser/screen/home/singleGridView.dart';
import 'package:flutter/material.dart';

Widget productView(BuildContext context) {
  return GridView.builder(
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 250,
      ),
      itemBuilder: (build, index) {
        return singleGridView(context);
      });
}
