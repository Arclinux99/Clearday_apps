import 'package:flutter/foundation.dart';

class Skinlog {
  final String id;
  final DateTime;
  final String? imagePath;
  final String? notes;
  final double rating;
  final List<String> tags;



Skinlog({
  required this.id;
  required this.date,
  this.imagePath,
  required this.notes,
  required this.rating,
  required this.tags,
});

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'date' : date.toIso8601String(),
    'imagePath' : imagePath,
    'notes': notes,
    'rating': rating,
    'tags': tags,
  };
}

factory Skinlog.fromJson(Map<String, dynamic> json) {
  return Skinlog(
id: json['id'],
date : DateTime.parse(json['date']),
imagePath: json['imagePath'],
notes: json['notes'],
rating: (json['rating'] as  num).toDouble() ,
tags: List<String>.from(json['tags']?? []),


  );
}
}