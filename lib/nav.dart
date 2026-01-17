import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:clearday/page/ask_ai_page.dart';

// Assuming these exist or will be created.
// If generic placeholders are needed, uncomment the classes below.
// import 'package:clearday/page/dashboard_page.dart';
// import 'package:clearday/widgets/scaffold_with_navbar.dart';

class AppRoutes {
  static const home = '/';
  static const askAi = '/ask-ai';
  static const logEntry = '/log-entry';
}

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.home,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.home,
            name: 'home',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: DashboardPage()),
          ),
          GoRoute(
            path: AppRoutes.askAi,
            name: 'askAi',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: AskAiPage()),
          ),
          GoRoute(
            path: AppRoutes.logEntry,
            name: "Log entry",
            // TODO: Implement LogEntryPage
            builder: (context, state) =>
                const Scaffold(body: Center(child: Text("Log Entry"))),
          ),
        ],
      ),
    ],
  );
}

class AppRoutes {
  static const String home = '/';
  static const String askAi = '/ai-chat';
  static const String settings = '/settings';
  static const String logEntry = '/log-entry';
  static const String history = '/history';
}

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar({required this.child});

final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
    );
  }
}