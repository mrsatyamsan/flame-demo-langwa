import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flame_demo/components/fly.dart';
import 'package:flame_demo/demo-game.dart';

class HungryFly extends Fly {
  HungryFly(DemoGame game, double x, double y) : super(game) {
    flyingSprite = List<Sprite>();
    flyingSprite.add(Sprite('flies/hungry-fly-1.png'));
    flyingSprite.add(Sprite('flies/hungry-fly-2.png'));
    deadSprite = Sprite('flies/hungry-fly-dead.png');
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.65, game.tileSize * 1.65);
  }
}
