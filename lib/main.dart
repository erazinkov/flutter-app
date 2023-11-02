import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:first_app/screens/auth.dart';
import 'package:first_app/screens/locations_board.dart';
import 'package:first_app/screens/vibes_board.dart';
import 'package:first_app/screens/tabs.dart';
import 'package:first_app/streams/auth_stream.dart';

import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.black,
  primary: Colors.black,
  onPrimary: const Color.fromRGBO(255, 255, 255, 0.5),
  onPrimaryContainer: Colors.white,
  onSecondary: Colors.white,
  onSecondaryContainer: Colors.white,
);

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kColorScheme.primary,
        textSelectionTheme: const TextSelectionThemeData().copyWith(
          selectionHandleColor: kColorScheme.onPrimaryContainer,
          selectionColor: kColorScheme.onPrimary,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          iconTheme: const IconThemeData().copyWith(
            color: kColorScheme.onPrimaryContainer,
          ),
          titleTextStyle: const TextStyle().copyWith(
            color: kColorScheme.onPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          centerTitle: true,
          backgroundColor: kColorScheme.primary,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: kColorScheme.primary,
          selectedItemColor: kColorScheme.onPrimaryContainer,
          unselectedItemColor: kColorScheme.onPrimary,
        ),
      ),
      // home: const TabsScreen(),
      home: AuthScreen(),
      // home: VibesBoard(),
      // home: LocationsBoard(),
      // home: Test(),
      // home: StreamBuilderAuth(),
    );
  }
}
