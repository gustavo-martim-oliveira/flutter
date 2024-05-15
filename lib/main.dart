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
      title: 'Meu primeiro APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue)
      ),
      home: const MyHomePage(title: 'Primeiro APP com contador'),
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
        title: Text(widget.title),
      ),

      drawer: Drawer(
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval (
                child: Image(
                  image: NetworkImage('https://media.licdn.com/dms/image/D4D35AQHFkcKxWGUYdQ/profile-framedphoto-shrink_200_200/0/1714751824442?e=1716354000&v=beta&t=59YuL9SR9MmKd1GuKuS6Zg2pGQWb3X05OUdlh6UJCIY'),
                ),
              ),
              accountName: Text('Gustavo Martim'), 
              accountEmail: Text('gustavo.drf@hotmail.com')
            )
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Cliques no botão flutuante',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Adicionar',
        child: const Icon(Icons.add_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
