import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String title;
  final String description;
  final DateTime timestamp;
  final bool isFinish;

  const Todo({
    required this.isFinish,
    required this.title,
    required this.description,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [title, description];
}
