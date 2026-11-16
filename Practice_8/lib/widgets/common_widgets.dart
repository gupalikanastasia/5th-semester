import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FlutterLogo(size: 60),
        const SizedBox(width: 8),
        Text(
          'Flutter',
          style: TextStyle(
            fontSize: 44,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}

class LabeledField extends StatelessWidget {
  const LabeledField({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 4),
        TextField(obscureText: obscureText),
      ],
    );
  }
}

void showMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return const AlertDialog(
        title: Text('Message'),
        content: Text('Need to implement'),
      );
    },
  );
}