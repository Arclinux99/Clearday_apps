import 'package:flutter/material.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

class Achievement {
  final String id;
  final String title;
  final String description;
  final String icon;
  final bool unlcoked;

  Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    this.unlcoked false,



  });
  Achievement copyWith({copyWith bool}) {
    return Achievement(
      
      id: id,
       title: title,
        description: description,
         icon: icon,
         unlcoked: unlcoked ?? this.unlcoked,
         
         );
  
  }
}


class GamificationState {
final int currentStreak; 
final int totalLogs;
final int points;
final DateTime? LastLogDate;
final List<Achievement> achievements;

GamificationState({
this.currentStreak = 0,
this.totalLogs = 0,
this.points = 0,
this.LastLogDate,
required this.achievements,


});
GamificationState copyWith({
  int? currentStreak,
  int? totalLogs,
  int? points,
  DateTime? lastlogDate,
  List<Achievement>? achievements,
}) {
  return GamificationState(
    currentStreak: currentStreak  ?? this.currentStreak,
    totalLogs: totalLogs ?? this.totalLogs,
    points: points ?? this.points,
    LastLogDate: lastlogDate ?? this.LastLogDate,
    achievements: achievements ?? this.achievements,
    
    
     );
}
static List<Achievement> get defaultAchievements => [
  // Achievement(id: 'first-log', title: 'First step', description: 'yey.. congrats.. this is your firs step', icon: buildAchievementsIcon(RiveIcon.achievements, Colors.green), unlcoked: false,),
 
  Achievement(id:'first log', title: 'First step', description: 'yey.. congrats.. this is your firs step', icon: '🌱', unlcoked: false),
  Achievement(id:'streak_3', title: 'Momentum', description: '3 days stick', icon: '🔥', unlcoked: false),
  Achievement(id:'streak_7', title: 'super', description: 'complete a full 7-day streak', icon: '🏆', unlcoked: false),
  Achievement(id: 'shutterbag', title: 'master', description: 'add your first photo', icon: '📸', unlcoked: false)

]

}