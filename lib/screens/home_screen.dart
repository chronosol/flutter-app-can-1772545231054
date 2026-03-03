import 'package:flutter/material.dart';
import '../widgets/game_board.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Can Crush'),
      ),
      body: const GameBoard(),
    );
  }
}
