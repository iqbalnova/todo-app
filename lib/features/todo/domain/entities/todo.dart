import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String title;
  final String description;
  final String endDate;
  final String startDate;
  final bool isFinish;

  const Todo({
    required this.isFinish,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        startDate,
        endDate,
        isFinish,
      ];
}
