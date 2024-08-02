import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/models/todo.dart';
import 'package:todo_app/core/services/firestore_service.dart';

part 'firestore_repository.g.dart';

@Riverpod(keepAlive: true)
class FirestoreRepository extends _$FirestoreRepository {
  @override
  void build() {}

  Future<void> addNewTodo(Todo todo) async {
    ref.read(firestoreServiceProvider.notifier).addNewTodo(todo);
  }
}
