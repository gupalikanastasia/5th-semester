import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _size = 150.0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  double _topLeft = 0;
  double _topRight = 0;
  double _bottomLeft = 0;
  double _bottomRight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              width: _size,
              height: _size,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_topLeft),
                  topRight: Radius.circular(_topRight),
                  bottomLeft: Radius.circular(_bottomLeft),
                  bottomRight: Radius.circular(_bottomRight),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                _buildSlider('TL', _topLeft,
                        (value) => setState(() => _topLeft = value)),
                _buildSlider('TR', _topRight,
                        (value) => setState(() => _topRight = value)),
              ],
            ),
            Row(
              children: [
                _buildSlider('BL', _bottomLeft,
                        (value) => setState(() => _bottomLeft = value)),
                _buildSlider('BR', _bottomRight,
                        (value) => setState(() => _bottomRight = value)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(
      String label, double value, ValueChanged<double> onChanged) {
    return Expanded(
      child: Column(
        children: [
          Text('$label: ${value.toStringAsFixed(2)}'),
          Slider(
            value: value,
            min: 0,
            max: _size / 2,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}