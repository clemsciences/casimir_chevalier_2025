import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainCasimirScaffold extends StatelessWidget {
  final Widget body;

  const MainCasimirScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800; // Adjust breakpoint as needed

    return Scaffold(
      body: SafeArea(child: body),
      resizeToAvoidBottomInset: false,
      bottomSheet: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withOpacity(0.2),
                ),

                // Border(
                //   top: BorderSide(
                //     width: 1.0,
                //     color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                //   ),
                // ),
                // color: Theme.of(context).colorScheme.surface,
              ),
              // padding: const EdgeInsets.all(20.0),
              // color: Theme.of(context).colorScheme.surface,
              child: SafeArea(
                child: Text(
                  "2025 La Société archéologique de Touraine.",
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'JEP 2025',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: isSmallScreen
            ? [
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
                ),
              ]
            : [
                TextButton(
                  onPressed: () {
                    context.push(CasimirChevalierRoutes.mainRoute);
                  },
                  child: const Text('Accueil'),
                ),
                // TextButton(onPressed: () {}, child: const Text('À Propos')),
                // TextButton(onPressed: () {}, child: const Text('Services')),
                // TextButton(onPressed: () {}, child: const Text('Contact')),
                TextButton(
                  onPressed: () {
                    context.push(
                      CasimirChevalierRoutes.mademoiselleCloqueRoute,
                    );
                  },
                  child: const Text('Mademoiselle Cloque'),
                ),
                TextButton(
                  onPressed: () {
                    context.push(CasimirChevalierRoutes.timelineBasiliqueRoute);
                  },
                  child: const Text('Frise chronologique de la basilique'),
                ),
              ],
      ),
      endDrawer: isSmallScreen
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Text(
                      'Journées européennes du patrimoine 2025 du 20 au 21 septembre',
                    ),
                  ),
                  ListTile(
                    title: const Text('Accueil'),
                    onTap: () => context.push(CasimirChevalierRoutes.mainRoute),
                  ),
                  ListTile(
                    title: const Text('Mademoiselle Cloque'),
                    onTap: () => context.push(
                      CasimirChevalierRoutes.mademoiselleCloqueRoute,
                    ),
                  ),
                  ListTile(
                    title: const Text('Frise chronologique de la basilique'),
                    onTap: () => context.push(
                      CasimirChevalierRoutes.timelineBasiliqueRoute,
                    ),
                  ),
                  ListTile(
                    title: Text("À Propos"),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
