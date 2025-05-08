import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice3/model/status.dart';
import 'package:practice3/model/task.dart';
import 'package:practice3/service/task_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_name.g.dart';

@riverpod
TaskApiClient repository(ref) => TaskApiClient();

@riverpod
Future<TaskList> task(ref, String id) async {
  final list = await ref.watch(listNotifierProvider.future);
  return list.firstWhere((task) => task.id == id);
}

@riverpod
class ListNotifier extends _$ListNotifier {
  @override
  Future<List<TaskList>> build() async {
    final apiClient = ref.read(repositoryProvider);

    final tasks = await apiClient.fetchList();
    return tasks ?? []; // fetchListがnullなら空リストを返す
  }

  Future<void> createState(
    String task,
    String description,
    Status status,
  ) async {
    final newTask = TaskList(
      task: task,
      description: description,
      status: status,
    );

    // サーバーに新しいタスクを追加
    final apiClient = ref.read(repositoryProvider);
    await apiClient.postTodo(task, description, status);

    // 状態を更新
    state = AsyncValue.data([...state.asData!.value, newTask]);
  }

  Future<void> updateState(
      String id, String newTitle, String newDetail, Status newStatus) async {
    state = await AsyncValue.guard(() async {
      final apiClient = ref.read(repositoryProvider);
      await apiClient.updateTodo(id, newTitle, newDetail, newStatus);

      return state.asData!.value.map((task) {
        return task.id == id
            ? task.copyWith(
                task: newTitle, description: newDetail, status: newStatus)
            : task;
      }).toList();
    });
  }

  Future<void> deleteState(String id) async {
    final apiClient = ref.read(repositoryProvider);

    // サーバーからタスクを削除
    await apiClient.deleteTodo(id);

    // 状態を更新
    state = AsyncValue.data(
        state.asData!.value.where((task) => task.id != id).toList());
  }
}
