import 'package:flutter/material.dart';
import 'package:samsung_phone_app/core/theme/sizes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class KeypadScreen extends StatelessWidget {
  const KeypadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingMedium),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.keypad,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
