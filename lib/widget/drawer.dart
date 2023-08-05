import 'package:flutter/material.dart';

class GenDrawer extends StatelessWidget {
  const GenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.25,
      elevation: 5,
      backgroundColor: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.person_outline),
            ),
          ),
        ],
      ),
    );
  }
}
