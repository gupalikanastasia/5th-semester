import 'package:flutter/material.dart';
import 'preview_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _textController = TextEditingController();
  double _fontSize = 24;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  
  Future<void> _openPreview() async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => PreviewScreen(
          text: _textController.text,
          fontSize: _fontSize,
        ),
      ),
    );

    if (!mounted) return;

    final message = switch (result) {
      'ok' => 'Cool!',
      'cancel' => "Let's try something else",
      _ => "Don't know what to say",
    };

    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text('Message'),
          content: Text(message),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Enter text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            Text('Size: ${_fontSize.round()}'),
            Slider(
              value: _fontSize,
              min: 10,
              max: 60,
              divisions: 50,
              label: _fontSize.round().toString(),
              onChanged: (value) => setState(() => _fontSize = value),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _openPreview,
              child: const Text('Preview'),
            ),
          ],
        ),
      ),
    );
  }
}