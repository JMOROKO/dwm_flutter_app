import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final Icon itemIcon;
  //final Function() handle; //declaration d'un objet de type fonction, pour méthode 1
  final String route; //methode 2

  DrawerItem({
    super.key,
    required this.title,
    required this.itemIcon,
    //required this.handle,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: Icon(Icons.arrow_forward),
      title: Text("${title}"),
      // onTap: handle, Methode 1
      //methode 2
      onTap: () {
        Navigator.of(context).pop();
        Navigator.pushNamed(context, "${route}");
      },
    );
  }
}
