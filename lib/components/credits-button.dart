import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flame_demo/demo-game.dart';
import 'package:flame_demo/view.dart';

class CreditsButton {
  final DemoGame game;
  Rect rect;
  Sprite sprite;

  CreditsButton(this.game) {
    rect = Rect.fromLTWH(
      game.screenSize.width - (game.tileSize * 1.25),
      game.screenSize.height - (game.tileSize * 1.25),
      game.tileSize,
      game.tileSize,
    );
    sprite = Sprite('ui/icon-credits.png');
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  void onTapDown() {
    game.activeView = View.credits;
  }
}