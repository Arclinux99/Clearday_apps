import 'package:rive_animated_icon/rive_animated_icon.dart';
import 'package:flutter/material.dart';


// rive animated icon standar
Widget buildAchievementsIcon(RiveIcon iconType, Color iconColor) {
  return RiveAnimatedIcon(
    riveIcon: iconType, // menerima paramyer icons
    color: iconColor,
    width: 24,
    height: 24,
    color : iconColor,
    loopAnimation: true,
    
  );
}