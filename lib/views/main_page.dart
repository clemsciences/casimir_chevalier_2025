import 'package:casimir_chevalier_2025/style/background.dart';
import 'package:casimir_chevalier_2025/style/style.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Section Hero
            MainBackground(
              child: Column(
                children: [
                  SelectableText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Découvrez\n",
                        ),
                        TextSpan(text: "l'exposition sur "),
                        TextSpan(text: "Casimir Chevalier", style: Theme.of(context).textTheme.headlineLarge!
                            .copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        )),
                        TextSpan(text: "\npour "),
                        TextSpan(
                          text: "les Journées Européennes du Patrimoine 2025",
                          style: SatStyle.textLinkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              launchUrl(
                                Uri.parse(
                                  "https://journeesdupatrimoine.culture.gouv.fr/actualites/a-la-rencontre-du-patrimoine-architectural",
                                ),
                              );
                            },
                          mouseCursor: SystemMouseCursors.click,
                        ),
                        TextSpan(text: "."),
                      ],

                      style: Theme.of(context).textTheme.headlineMedium!
                          .copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // const SizedBox(height: 20),
                  // Text(
                  //   'Une expérience unique vous attend. Explorez nos offres et trouvez ce qui vous convient.',
                  //   style: Theme.of(
                  //     context,
                  //   ).textTheme.titleMedium?.copyWith(color: Colors.white70),
                  //   textAlign: TextAlign.center,
                  // ),
                  // const SizedBox(height: 30),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text('Nos Services'),
                  // ),
                ],
              ),
            ),

            // Aperçu des Services
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Column(
            //     children: [
            //       Text(
            //         'Nos Principaux Services',
            //         style: Theme.of(context).textTheme.headlineSmall,
            //       ),
            //       const SizedBox(height: 20),
            //       Wrap(
            //         // Utilisation de Wrap pour un layout responsive
            //         spacing: 20,
            //         runSpacing: 20,
            //         alignment: WrapAlignment.center,
            //         children: [
            //           _buildServiceItem(
            //             context,
            //             Icons.design_services,
            //             'Service A',
            //             'Description brève du service A, mettant en avant ses avantages.',
            //           ),
            //           _buildServiceItem(
            //             context,
            //             Icons.code,
            //             'Service B',
            //             'Description brève du service B, expliquant sa valeur ajoutée.',
            //           ),
            //           _buildServiceItem(
            //             context,
            //             Icons.support_agent,
            //             'Service C',
            //             'Description brève du service C, soulignant son unicité.',
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            // Aperçu À Propos
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text(
                    'Qui Sommes-Nous ?',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineSmall?.copyWith(color: Colors.black87),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Nous sommes la Société archéologique de Touraine, une société savante fondée en 1840 qui promeut la préservation du patrimoine locale et encourage les recherches sur l'Histoire de la Touraine.",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.black87),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(Uri.parse("https://societearcheotouraine.eu/"));
                    },
                    child: const Text(
                      'Visiter le site internet',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        SatStyle.lightBlueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Appel à l'Action
            // Container(
            //   color: Colors.amber,
            //   padding: const EdgeInsets.symmetric(
            //     vertical: 40,
            //     horizontal: 20,
            //   ),
            //   child: Column(
            //     children: [
            //       Text(
            //         'Prêt à Commencer ?',
            //         style: Theme.of(context).textTheme.headlineSmall,
            //       ),
            //       const SizedBox(height: 20),
            //       const Text(
            //         'Contactez-nous dès aujourd\'hui pour discuter de vos besoins et découvrir comment nous pouvons vous aider.',
            //         textAlign: TextAlign.center,
            //       ),
            //       const SizedBox(height: 20),
            //       ElevatedButton(
            //         onPressed: () {},
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.black,
            //         ),
            //         child: const Text(
            //           'Contactez-Nous',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // Footer
            // Container(
            //   padding: const EdgeInsets.all(20.0),
            //   color: Theme.of(context).colorScheme.surface,
            //   child: Text(
            //     '© 2025 La Société archéologique de Touraine. Tous droits réservés.',
            //     style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7)),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(
    BuildContext context,
    IconData icon,
    String title,
    String description,
  ) {
    return SizedBox(
      // Utilisation de SizedBox pour contrôler la largeur maximale
      width: 300,
      child: Card(
        // ignore: prefer_const_constructors
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(icon, size: 40, color: Theme.of(context).primaryColor),
              const SizedBox(height: 10),
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 5),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
