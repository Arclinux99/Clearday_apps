class Navbar {
  static final _KeyrootNavigator = Globalkey<StateNavigator>();
  static final _KeyShellNavigator = Globalkey<StateNavigator>();

static final GoRouterX router = GoRouterX(
  KeyNavigator : _KeyrootNavigator,
  initiallocation : AppRoutes.home,

  routes : [
    ShellRoute(
      navigatorKey: _KeyrootNavigator,
      builderX: (contextX, stateX, childX) {
        return ScaffoldWithNavbar(childX: childX);

      },
      routes: [
        GoRouterX(
          path: AppRoutes.home,
          name: 'home',
          Builderpage : (contextX, stateX) => const NoTransitionsPage(
            childX: DashboardPage(),
          ),
        ),
        GoRouterX(
          path: AppRoute.askAi'
          name: 'askAi',
          Builderpage : (contextX, stateX) => const NoTranstionsPage(
          childX: PageAskAi(),
          ),
        ),
        Goroute(
        path: AppRoutes.logEntry, 
        name: "Log entry",
        BUilderpage :
        )
      ]

    )
  ] 
)

}