import 'package:flutter/material.dart';
import 'common_widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              const AppLogo(),
              const SizedBox(height: 16),
              Text(
                'Sign up',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              const LabeledField(label: 'Name:'),
              const SizedBox(height: 12),
              const LabeledField(label: 'Email:'),
              const SizedBox(height: 12),
              const LabeledField(label: 'Password:', obscureText: true),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => showMessage(context),
                child: const Text('Sign up'),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}