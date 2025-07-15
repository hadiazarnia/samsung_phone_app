import 'package:flutter/material.dart';
import 'package:samsung_phone_app/core/theme/sizes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RecentsScreen extends StatelessWidget {
  const RecentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingMedium),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.recents,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
