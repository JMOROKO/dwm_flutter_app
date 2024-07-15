import 'package:dwm_flutter_app/widgets/drawer.item.dart';
import 'package:dwm_flutter_app/widgets/entetemenu.drawerHeader.dart';
import 'package:flutter/material.dart';

class MenuDrawerWidget extends StatelessWidget {
  const MenuDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          EntetmenuDrawerHeader(),
          DrawerItem(
            title: "Home",
            itemIcon: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            /*handle: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },*/
            //methode 2
            route: "/",
          ),
          Divider(
            height: 0.5,
            color: Theme.of(context).primaryColor,
          ),
          DrawerItem(
            title: "Counter",
            itemIcon: Icon(Icons.countertops_outlined,
                color: Theme.of(context).primaryColor),
            /*
            Methode 1 passage de fonction en paramètre
            handle: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            },*/
            //methode 2
            route: "/counter",
          ),
          Divider(
            height: 0.5,
            color: Theme.of(context).primaryColor,
          ),
          DrawerItem(
            title: "Chat",
            itemIcon: Icon(Icons.chat, color: Theme.of(context).primaryColor),
            /*
            Methode 1 passage de fonction en paramètre
            handle: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/chat");
            },*/
            route: "/chat",
          ),
        ],
      ),
    );
  }
}
