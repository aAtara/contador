import 'package:flutter/material.dart';

void main() {
  runApp(const ContadorApp());
}

class ContadorApp extends StatelessWidget {
  const ContadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const ContadorScreen(),
    );
  }
}

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _reiniciar() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Valor actual:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              '$_contador',
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementar,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Icon(Icons.remove, size: 28),
                ),
                const SizedBox(width: 24),
                ElevatedButton(
                  onPressed: _incrementar,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Icon(Icons.add, size: 28),
                ),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: _reiniciar,
              icon: const Icon(Icons.refresh),
              label: const Text('Reiniciar'),
            ),
          ],
        ),
      ),
    );
  }
}