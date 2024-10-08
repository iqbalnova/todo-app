import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getAllTodo();
}
