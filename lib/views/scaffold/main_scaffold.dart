import 'package:casimir_chevalier_2025/models/app/scaffold_item.dart';
import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/routes/router_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainCasimirScaffold extends StatelessWidget {
  final Widget body;

  MainCasimirScaffold({super.key, required this.body});

  final List<ScaffoldItem> _items = [
    // ScaffoldItem(
    //   label: "Casimir Chevalier",
    //   path: CasimirChevalierRoutes.casimirRoute,
    //   children: [
    //     ScaffoldItem(
    //       label: "Biographie",
    //       path: CasimirChevalierRoutes.casimirRoute,
    //       children: null,
    //     ),
    //     ScaffoldItem(label: "Liens avec Chenonceau", path: CasimirChevalierRoutes.chenonceauRoute, children: null)
    //   ],
    // ),
    ScaffoldItem(label: "Basilique Saint-Martin", path: "", children: [
      ScaffoldItem(
        label: "Frise chronologique de la basilique Saint-Martin",
        path: CasimirChevalierRoutes.timelineBasiliqueRoute,
        children: null,
      ),
    ]),
    ScaffoldItem(
      label: "Mademoiselle Cloque",
      path: CasimirChevalierRoutes.mademoiselleCloqueRoute,
      children: [
        ScaffoldItem(
          label: "Personnages",
          path: CasimirChevalierRoutes.peopleRoute,
          children: null,
        ),
        ScaffoldItem(
          label: "Lieux",
          path: CasimirChevalierRoutes.locationsRoute,
          children: null,
        ),
        ScaffoldItem(
          label: "Institutions",
          path: CasimirChevalierRoutes.institutionsRoute,
          children: null,
        ),
      ],
    ),
    ScaffoldItem(
      label: "À propos",
      path: CasimirChevalierRoutes.moreRoute,
      children: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800; // Adjust breakpoint as needed

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (c, constraints) => PopScope(
            canPop: Scaffold.of(c).isEndDrawerOpen,
            onPopInvokedWithResult: (canPop, result) {
              if (Scaffold.of(c).isEndDrawerOpen) {
                Scaffold.of(c).closeEndDrawer();
              } else {
                // Pop page only if the page is not the last one in the route history
                if (context.canPop()) {
                  context.pop();
                }
              }
              // If the drawer was open, PopScope's canPop was false,
              // so we need to manually pop if it's now closed.
            },
            child: body,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomSheet: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SafeArea(
              child: SelectableText(
                "2025 - La Société archéologique de Touraine.",
                style: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            context.goPush(CasimirChevalierRoutes.mainRoute);
          },
          child: Text(
            "JEP 2025",
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
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
            : _buildMenuAnchor(context, _items),
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
                  ..._buildDrawerList(context, _items),
                ],
              ),
            )
          : null,
    );
  }

  List<MenuAnchor> _buildMenuAnchor(
    BuildContext context,
    List<ScaffoldItem> items,
  ) {
    return items
        .map(
          (ScaffoldItem item) => MenuAnchor(
            builder: (context, controller, child) => TextButton(
              onPressed: () {
                if (item.children != null) {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                } else {
                  context.goPush(item.path);
                }
              },
              child: Text(item.label),
            ),
            menuChildren: item.children != null
                ? _buildMenuAnchor(context, item.children!)
                : [],
          ),
        )
        .toList();
  }

  List<Widget> _buildDrawerList(
    BuildContext context,
    List<ScaffoldItem> items,
  ) {
    return items.map((item) {
      if (item.hasChildren) {
        return ExpansionTile(
          title: Text(item.label),
          children: _buildDrawerList(context, item.children!),
        );
      } else {
        return ListTile(
          title: Text(item.label),
          onTap: () {
            context.goPush(item.path);
          },
        );
      }
    }).toList();
  }
}
