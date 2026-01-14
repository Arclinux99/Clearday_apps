import 'package:flutter/material.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();


static final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRouters.Home,
  routes: [
    Shellroute(_shellNavigatorKey,
    builder: (context, state, child) {
      return ScaffoldWithNavBar(
        child: child,
        
      );
    },
    routes: [
     GoRoute(
      path: AppRouters.Home,
      builder: (context, state) => const HomeScreen(),
     ) 
    ]
    )
  ]
  
)
}
