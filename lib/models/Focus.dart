import 'package:flutter/material.dart';
import 'package:recruiter/shared/themes/app_colors.dart';

class Focus {
  int? id;
  String goal;
  String task;
  Color color;

  Focus({
    required this.id,
    required this.goal,
    required this.task,
    required this.color,
  });

  @override
  String toString() {
    return 'Focus{id: $id, goal: $goal, task: $task, color: $color}';
  }

  factory Focus.fromMap(Map<String, dynamic> json)=> (Focus(
    id: json['id'] ?? 0, 
    goal: json['goal'] ?? "",
    task: json['task'] ?? "", 
    color: json['color'] ?? AppColors.primary, 
  ));

  Map<String, dynamic> toMap()=>{
    'id': id, 
    'goal': goal, 
    'task': task, 
    'color': color, 
  };
}
