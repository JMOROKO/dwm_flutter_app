import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Counter value => ${counter}",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment:
            MainAxisAlignment.end, //permet d'afficher l'element en fin de ligne
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              //Utiliser set state pour changer l'état de l'application
              setState(() {
                ++this.counter;
                print(this.counter);
              });
            },
          ),
          //c'est un séparateur
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                --this.counter;
                print(this
                    .counter); //pour afficher les informations dans la console
              });
            },
          ),
        ],
      ),
    );
  }
}
