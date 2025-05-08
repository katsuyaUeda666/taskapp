import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice3/model/status.dart';
import 'package:practice3/state/task_name.dart';

class StatusDropdown extends HookConsumerWidget {
  final String id; // タスクID

  const StatusDropdown({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // タスクリスト全体を取得（AsyncValueの状態を扱う）
    final taskAsync = ref.watch(taskProvider(id));

    return taskAsync.when(
      data: (task) {
        return DropdownButton<Status>(
          value: task.status,
          items: Status.values.map((status) {
            return DropdownMenuItem<Status>(
              value: status,
              child: Text(
                status.label, // 各ステータスに対応するラベルを表示
                style: const TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
          isExpanded: true,
          onChanged: (newValue) {
            // ステータスが変更された場合にのみ更新
            if (newValue == null && newValue == task.status) return;
            ref.read(listNotifierProvider.notifier).updateState(
                task.id!, task.task!, task.description!, newValue!);
          },
        );
      },
      loading: () => const CircularProgressIndicator(), // ローディング状態
      error: (err, stack) => Text('Error: $err'), // エラー状態
    );
  }
}
