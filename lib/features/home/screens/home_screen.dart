import 'package:flutter/material.dart';
import 'package:samsung_phone_app/core/theme/sizes.dart';
import 'package:samsung_phone_app/features/about/screens/about_screen.dart';
import 'package:samsung_phone_app/features/home/screens/contacts_screen.dart';
import 'package:samsung_phone_app/features/home/screens/keypad_screen.dart';
import 'package:samsung_phone_app/features/home/screens/recents_screen.dart';
import 'package:samsung_phone_app/features/settings/screens/settings_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    KeypadScreen(),
    RecentsScreen(),
    ContactsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              } else if (value == 'about') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              }
            },
            itemBuilder:
                (BuildContext context) => [
                  PopupMenuItem(
                    value: 'settings',
                    child: Text(AppLocalizations.of(context)!.settings),
                  ),
                  PopupMenuItem(
                    value: 'about',
                    child: Text(AppLocalizations.of(context)!.aboutApp),
                  ),
                ],
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dialpad, size: AppSizes.iconSizeMedium),
            label: AppLocalizations.of(context)!.keypad,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time, size: AppSizes.iconSizeMedium),
            label: AppLocalizations.of(context)!.recents,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts, size: AppSizes.iconSizeMedium),
            label: AppLocalizations.of(context)!.contacts,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
