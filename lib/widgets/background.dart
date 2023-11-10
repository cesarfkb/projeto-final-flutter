import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return const RiveAnimation.asset(
      'assets/background.riv',
      fit: BoxFit.fill,
      stateMachines: ['State Machine 1'],
    );
  }
}
