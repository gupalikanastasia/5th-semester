import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/container_config.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ContainerConfig>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSlider(
            label: 'Width',
            value: config.width,
            max: 200,
            onChanged: (value) => config.width = value,
          ),
          _buildSlider(
            label: 'Height',
            value: config.height,
            max: 200,
            onChanged: (value) => config.height = value,
          ),
          _buildSlider(
            label: 'Radius',
            value: config.radius,
            max: 100,
            onChanged: (value) => config.radius = value,
          ),
        ],
      ),
    );
  }

  Widget _buildSlider({
    required String label,
    required double value,
    required double max,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ${value.toStringAsFixed(2)}'),
        Slider(value: value, min: 0, max: max, onChanged: onChanged),
      ],
    );
  }
}