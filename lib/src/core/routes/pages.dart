library route_pages;

import 'package:go_router/go_router.dart';
import 'package:pokedex_application/src/features/pokedex/presentation/pages/pokedex_page.dart';
import 'routes.dart';

final appRouter = GoRouter(
  initialLocation: RoutesName.pokedex,
  routes: [
    GoRoute(
      path: RoutesName.pokedex,
      builder: (context, state) => const PokedexPage(),
    ),
  ],
  debugLogDiagnostics: true,
);
