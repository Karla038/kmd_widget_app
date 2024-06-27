import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: '/buttons',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const CardsScreen(),
    )

  ]
);