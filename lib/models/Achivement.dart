import 'package:flutter/material.dart';
import 'package:recruiter/shared/themes/app_colors.dart';

class Achievement {
  int? id;
  String title;
  String subTitle;
  Color color;

  Achievement({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.color,
  });

  @override
  String toString() {
    return 'Achievement{id: $id, title: $title, subTitle: $subTitle, color: $color}';
  }

  factory Achievement.fromMap(Map<String, dynamic> json)=> (Achievement(
    id: json['id'] ?? 0, 
    title: json['title'] ?? "",
    subTitle: json['subTitle'] ?? "", 
    color: json['color'] ?? AppColors.primary, 
  ));

  Map<String, dynamic> toMap()=>{
    'id': id, 
    'title': title, 
    'subTitle': subTitle, 
    'color': color, 
  };
}
