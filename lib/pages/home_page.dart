import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice3/state/task_name.dart';
import 'package:practice3/widgets/todo_widget.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskNameAsyncValue = ref.watch(listNotifierProvider);
    final controller = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('タスク管理アプリ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '検索',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                context.goNamed('AddTodo');
              },
              child: const Text('＋ 追加'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(800, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: taskNameAsyncValue.when(
                data: (taskList) => ListView.builder(
                  itemCount: taskList.length,
                  itemBuilder: (context, index) => TodoWidget(taskList[index]),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) =>
                    Center(child: Text('エラーが発生しました: $error')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
