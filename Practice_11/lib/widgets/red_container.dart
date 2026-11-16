import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/container_config.dart';

class RedContainer extends StatelessWidget {
  const RedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ContainerConfig>();

    return Container(
      width: config.width,
      height: config.height,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(config.radius),
        ),
      ),
    );
  }
}