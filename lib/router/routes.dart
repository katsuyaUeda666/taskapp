import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice3/model/status.dart';
import 'package:practice3/pages/add_page.dart';
import 'package:practice3/pages/edit_page.dart';
import 'package:practice3/pages/home_page.dart';
import 'package:practice3/pages/profile_button.dart';

import 'branch/app_navigation_bar.dart';

// part '../router/branch/add_todo_branch.dart';
// part '../router/branch/home_branch.dart';
// part '../router/branch/profile_branch.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final todoNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'todo');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final routerProvider = Provider(
  (ref) => GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/home',
    routes: appRoutes,
    // routes: appRoutes,
  ),
);

final appRoutes = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: rootNavigatorKey,
    builder: (context, state, navigationShell) {
      return AppNavigationBar(navigationShell: navigationShell);
    },
    branches: [
      StatefulShellBranch(navigatorKey: homeNavigatorKey, routes: [
        GoRoute(
            name: 'home',
            path: '/home',
            pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const HomePage(),
                ),
            routes: [
              GoRoute(
                name: 'AddTodo',
                path: 'AddTodo',
                parentNavigatorKey: rootNavigatorKey,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: AddTodoButton(),
                ),
              ),
              GoRoute(
                name: 'EditTodo',
                path: 'EditTodo',
                parentNavigatorKey: rootNavigatorKey,
                pageBuilder: (context, state) {
                  final extra = state.extra as Map<String, dynamic>?;
                  final id = extra?['id'] ?? 0;
                  final title = extra?['title'] ?? 'Default Title';
                  final detail = extra?['detail'] ?? 'Default Detail';
                  final status = Status.values.firstWhere(
                    (e) => e.name == state.pathParameters['status'],
                    orElse: () => Status.todo, // 万が一ない場合はtodoをデフォルト
                  );
                  return MaterialPage(
                    key: state.pageKey,
                    child: EditTodo(
                      id: id,
                      title: title,
                      detail: detail,
                      status: status,
                    ),
                  );
                },
              )
            ]),
      ]),
      StatefulShellBranch(navigatorKey: todoNavigatorKey, routes: [
        GoRoute(
          name: 'addTodo',
          path: '/addTodo',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const AddTodoButton(),
          ),
        ),
      ]),
      StatefulShellBranch(
        navigatorKey: profileNavigatorKey,
        routes: [
          GoRoute(
            name: 'profile',
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProfileButton(),
            ),
          ),
        ],
      ),
    ],
  ),
];
