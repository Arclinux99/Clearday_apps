import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState() ),

      ],
      child: MaterialApp.router(
        title: 'clearday',
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,

      )
    );
  }
}