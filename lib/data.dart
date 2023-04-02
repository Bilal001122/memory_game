import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

enum Level { Hard, Medium, Easy }

List<String> fillSourceArray() {
  return [
    'assets/icons8-dart-96.png',
    'assets/icons8-dart-96.png',
    'assets/icons8-firebase-96.png',
    'assets/icons8-firebase-96.png',
    'assets/icons8-flutter-96.png',
    'assets/icons8-flutter-96.png',
    'assets/icons8-google-96.png',
    'assets/icons8-google-96.png',
    'assets/icons8-dart-96.png',
    'assets/icons8-dart-96.png',
    'assets/icons8-firebase-96.png',
    'assets/icons8-firebase-96.png',
    'assets/icons8-flutter-96.png',
    'assets/icons8-flutter-96.png',
    'assets/icons8-google-96.png',
    'assets/icons8-google-96.png',
    'assets/icons8-dart-96.png',
    'assets/icons8-dart-96.png',
  ];
}

List<String> getSourceArray(
    Level level,
    ) {
  List<String> levelAndKindList = <String>[];
  List sourceArray = fillSourceArray();
   if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      levelAndKindList.add(sourceArray[i]);
    }
  }
  levelAndKindList.shuffle();
  return levelAndKindList;
}

List<bool> getInitialItemState(Level level) {
  List<bool> initialItemState = <bool>[];
  if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      initialItemState.add(true);
    }
  }
  return initialItemState;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(Level level) {
  List<GlobalKey<FlipCardState>> cardStateKeys =
  <GlobalKey<FlipCardState>>[];
   if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardStateKeys;
}