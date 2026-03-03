import 'package:flutter/material.dart';
import 'dart:math';

class Candy {
  final Color color;
  Candy(this.color);
}

class GameModel extends ChangeNotifier {
  final Random _random = Random();
  final List<Candy> _candyTypes = [
    Candy(Colors.red),
    Candy(Colors.green),
    Candy(Colors.blue),
    Candy(Colors.yellow),
    Candy(Colors.purple),
  ];
  List<Candy> _grid = [];

  GameModel() {
    _initializeGrid();
  }

  List<Candy> get grid => _grid;

  void _initializeGrid() {
    _grid = List.generate(64, (_) => _candyTypes[_random.nextInt(_candyTypes.length)]);
    notifyListeners();
  }

  void selectCandy(int index) {
    // Logic for selecting and potentially swapping candies
    notifyListeners();
  }
}
