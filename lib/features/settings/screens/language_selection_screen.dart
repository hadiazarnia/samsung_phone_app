import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:samsung_phone_app/core/theme/sizes.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.language)),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingMedium),
        child: ListView(
          children: [
            ListTile(
              title: const Text('English'),
              onTap: () {
                // TODO: Implement language change logic
              },
            ),
            ListTile(
              title: const Text('Persian'),
              onTap: () {
                // TODO: Implement language change logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
