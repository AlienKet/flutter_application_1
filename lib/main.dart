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
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 4)),
      ),
      home: const MyHomePage(title: 'Alien'),
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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, //fondo del titulo
       
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Eso tiliiin'),
            Text(
              '$_counter',
             style: Theme.of(context).textTheme.headlineMedium, //esilo del texto
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
      FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        heroTag: null, 
        label: const Text('Incrementar'),
      ),

const SizedBox(width: 10),

FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        heroTag: null, 
        child: const Icon(Icons.remove), //icono menos
        
        backgroundColor: const Color.fromARGB(255, 13, 191, 245), //color del boton
      ),
  ],
      ),
       
    );
  }
}
