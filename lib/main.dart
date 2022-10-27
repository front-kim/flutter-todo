import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterToDo());
}

class FlutterToDo extends StatelessWidget {
  const FlutterToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ToDo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SamplePage(title: 'Flutter ToDo'),
    );
  }
}

class SamplePage extends StatefulWidget {
  const SamplePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
