import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan 2 - Stateful Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Counter Stateful'),
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

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Nilai Counter',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '$_counter',
                      style: const TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ElevatedButton.icon(
                          onPressed: _incrementCounter,
                          icon: const Icon(Icons.add),
                          label: const Text('Tambah'),
                        ),
                        ElevatedButton.icon(
                          onPressed: _decrementCounter,
                          icon: const Icon(Icons.remove),
                          label: const Text('Kurang'),
                        ),
                        OutlinedButton.icon(
                          onPressed: _resetCounter,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Reset'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
