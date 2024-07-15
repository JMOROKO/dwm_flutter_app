import 'package:flutter/material.dart';

class EntetmenuDrawerHeader extends StatelessWidget {
  const EntetmenuDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/828947V.jpg"),
            radius: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/828947V.jpg"),
            radius: 70,
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Theme.of(context).primaryColor,
          ],
        ),
      ),
    );
  }
}
