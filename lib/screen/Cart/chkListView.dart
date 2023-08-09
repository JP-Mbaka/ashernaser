import 'package:flutter/material.dart';

Widget chkListView() {
  return ListTile(
    leading: Checkbox(value: true, onChanged: (_) {}),
    title: Text(
      'Home',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Text(
        'NYSC Quarters, Mr. Abass Compound, Mfuma-Yala, CrossRiver State, Nigeria.'),
  );
}
