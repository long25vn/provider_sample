import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/about.dart';
import 'package:provider_sample/drawer.dart';
import 'package:provider_sample/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (context) => Counter(),
      child: MaterialApp(
        title: 'Counter App', 
        initialRoute: '/', 
        routes: {
        '/': (context) => MyPage(),
        '/about': (context) => AboutPage(),
      }),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Home page"),
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
