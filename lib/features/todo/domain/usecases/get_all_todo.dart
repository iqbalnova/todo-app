import 'package:dartz/dartz.dart';
import 'package:todolist/core/error/failure.dart';
import 'package:todolist/features/todo/domain/entities/todo.dart';
import 'package:todolist/features/todo/domain/repositories/todo_repository.dart';

class GetAllTodo {
  final TodoRepository todoRepository;

  GetAllTodo({required this.todoRepository});

  Future<Either<Failure, List<Todo>>> execute() async {
    return await todoRepository.getAllTodo();
  }
}
