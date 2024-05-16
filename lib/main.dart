import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Scaffold'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Scaffold of Home Page"),
      ),
      body: Center(
        child: Text("We have passed the button $_counter"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 20,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
      ,
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Farhad Dubey"),
                accountEmail: Text("farhaddubey003@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("Let's say green"),
            ),),
            ListTile(
              title: new Text("Inbox"),
              leading: new Icon(Icons.mail),
            ),
            ListTile(
              title: new Text("Outbox"),
              trailing: new Icon(Icons.account_box),
            ),
            Divider(height: 0.5,),
            ListTile(
              title: new Text('Social'),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              trailing: new Icon(Icons.directions_transit_filled),
            ),
            Divider(height: 1,)
          ],
        ),
      ),
    );
  }
}
