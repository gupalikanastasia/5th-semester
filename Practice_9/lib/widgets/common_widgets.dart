import 'package:flutter/material.dart';

String? validateRequired(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'This field is required';
  }
  return null;
}

String? validateEmail(String? value) {
  final required = validateRequired(value);
  if (required != null) return required;

  final emailRegex = RegExp(r'^[\w.+-]+@[\w-]+(\.[\w-]+)+$');
  if (!emailRegex.hasMatch(value!.trim())) {
    return 'Enter a valid email';
  }
  return null;
}

String? validatePassword(String? value) {
  final required = validateRequired(value);
  if (required != null) return required;

  if (value!.length < 7) {
    return 'Password must be at least 7 characters';
  }
  return null;
}

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
          style: TextStyle(fontSize: 44, color: Colors.grey.shade700),
        ),
      ],
    );
  }
}

class LabeledField extends StatelessWidget {
  const LabeledField({
    super.key,
    required this.label,
    required this.validator,
    this.obscureText = false,
  });

  final String label;
  final String? Function(String?) validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          obscureText: obscureText,
          validator: validator,
        ),
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