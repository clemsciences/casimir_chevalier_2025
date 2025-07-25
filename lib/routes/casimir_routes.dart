import 'package:casimir_chevalier_2025/routes/routes.dart';
import 'package:casimir_chevalier_2025/views/book/chapter_page.dart';
import 'package:casimir_chevalier_2025/views/book/chapters_page.dart';
import 'package:casimir_chevalier_2025/views/book/locations_page.dart';
import 'package:casimir_chevalier_2025/views/book/miscellaneous_page.dart';
import 'package:casimir_chevalier_2025/views/book/people_page.dart';
import 'package:casimir_chevalier_2025/views/cloque_page.dart';
import 'package:casimir_chevalier_2025/views/error_page.dart';
import 'package:casimir_chevalier_2025/views/main_page.dart';
import 'package:casimir_chevalier_2025/views/more_page.dart';
import 'package:casimir_chevalier_2025/views/timeline_page.dart';
import 'package:go_router/go_router.dart';

class CasimirChevalierRoutes extends AppRoutes {
  static const String mainRoute = "/";
  static const String moreRoute = "/a-propos";
  static const String timelineBasiliqueRoute = "/timeline";
  static const String mademoiselleCloqueRoute = "/mademoiselle-cloque";
  static const String locationsRoute = "/mademoiselle-cloque/lieux";
  static const String peopleRoute = "/mademoiselle-cloque/personnes";
  static const String institutionsRoute = "/mademoiselle-cloque/institutions";
  static const String chaptersRoute = "/mademoiselle-cloque/chapters";
  static const String chapterRoute = "/mademoiselle-cloque/chapters/:id";

  static String replaceItem(String route, String id) {
    return route.replaceAll(":id", id);
  }

  static String getChapterRoute(int chapterId) {
    return replaceItem(chapterRoute, "$chapterId");
  }
}

final GoRouter casimirChevalierRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: CasimirChevalierRoutes.mainRoute,
  errorBuilder: (context, state) => ErrorPage(),
  routes: [
    GoRoute(
      path: CasimirChevalierRoutes.mainRoute,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: MainPage());
      },
    ),
    GoRoute(
      path: CasimirChevalierRoutes.moreRoute,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: MorePage());
      },
    ),
    GoRoute(
      path: CasimirChevalierRoutes.timelineBasiliqueRoute,
      builder: (context, state) => TimelinePage(),
    ),
    for (var chapterId = 0; chapterId < 17; chapterId++)
      GoRoute(
        path: "${CasimirChevalierRoutes.chapterRoute}/$chapterId",
        builder: (context, state) => ChapterPage(chapterId: chapterId),
      ),
    GoRoute(
      path: CasimirChevalierRoutes.chaptersRoute,
      builder: (context, state) => ChaptersPage(),
    ),
    GoRoute(
      path: CasimirChevalierRoutes.locationsRoute,
      builder: (context, state) => LocationsPage(),
    ),
    GoRoute(
      path: CasimirChevalierRoutes.peopleRoute,
      builder: (context, state) => PeoplePage(),
    ),
    GoRoute(
      path: CasimirChevalierRoutes.institutionsRoute,
      builder: (context, state) => MiscellaneousPage(),
    ),
    GoRoute(
      path: CasimirChevalierRoutes.mademoiselleCloqueRoute,
      builder: (context, state) => MademoiselleCloquePage(),
    ),
  ],
);
