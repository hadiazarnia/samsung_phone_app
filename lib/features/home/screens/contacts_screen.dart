import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:samsung_phone_app/core/theme/sizes.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingMedium),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.contacts,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
