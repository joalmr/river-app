import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:river_app/app/presentation/views/home/home_view.dart';

final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
  ],
);
