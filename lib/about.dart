


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/counter.dart';
import 'package:provider_sample/drawer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("About page"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(
              builder: (context, counter, child) => Column(
                children: <Widget>[
                  Text(
                    '${counter.count}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  RaisedButton(
                    onPressed: () => counter.increment(),
                    child: Text("Increment"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}