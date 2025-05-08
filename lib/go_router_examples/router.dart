import 'package:flutter_deep_dive_example/go_router_examples/pages/error_page.dart';
import 'package:flutter_deep_dive_example/go_router_examples/pages/go_router_home_page.dart';
import 'package:flutter_deep_dive_example/go_router_examples/pages/post_detail_page.dart';
import 'package:flutter_deep_dive_example/go_router_examples/pages/post_list_page.dart';
import 'package:flutter_deep_dive_example/go_router_examples/pages/search_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GoRouterHomePage(),
      routes: [
        GoRoute(
          path: 'post',
          builder: (context, state) => const PostListPage(),
          routes: [
            GoRoute(
              path: ':id',
              builder: (context, state) {
                final id = int.tryParse(state.pathParameters['id'] ?? '');
                if (id == null) {
                  return const ErrorPage();
                }
                return PostDetailPage(id: id);
              },
            ),
            GoRoute(
              path: 'search',
              builder: (context, state) {
                final text = state.uri.queryParameters['text'] ?? '';
                if (text.trim().isEmpty) {
                  return ErrorPage();
                }
                return SearchPage(text: text);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
