import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flame_demo/demo-game.dart';
class HelpView {
  final DemoGame game;
  Rect rect;
  Sprite sprite;

  HelpView(this.game) {
    rect = Rect.fromLTWH(
      game.tileSize * .5,
      (game.screenSize.height / 2) - (game.tileSize * 6),
      game.tileSize * 8,
      game.tileSize * 12,
    );
    sprite = Sprite('ui/dialog-help.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }
}