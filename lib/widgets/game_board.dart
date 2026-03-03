import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/game_model.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final gameModel = Provider.of<GameModel>(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemCount: gameModel.grid.length,
      itemBuilder: (context, index) {
        final candyType = gameModel.grid[index];
        return GestureDetector(
          onTap: () => gameModel.selectCandy(index),
          child: Container(
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: candyType.color,
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}
