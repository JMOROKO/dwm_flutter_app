import 'package:dwm_flutter_app/widgets/menu.drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawerWidget(),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Home page",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
