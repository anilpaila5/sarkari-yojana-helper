import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'l10n/app_localizations.dart';
import 'screens/home_screen.dart';
import 'services/crash_log.dart';

const String kPrefLocale = 'pref_locale';
const String kPrefProfile = 'pref_profile_v1';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      CrashLog.save(details.toString());
    };
    PlatformDispatcher.instance.onError = (error, stack) {
      CrashLog.save('$error\n$stack');
      return true;
    };
    runApp(const SphApp());
  }, (error, stack) => CrashLog.save('$error\n$stack'));
}

class SphApp extends StatefulWidget {
  const SphApp({super.key});

  static _SphAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_SphAppState>()!;

  @override
  State<SphApp> createState() => _SphAppState();
}

class _SphAppState extends State<SphApp> {
  Locale _locale = const Locale('en');

  @override
  void initState() {
    super.initState();
    _restore();
  }

  Future<void> _restore() async {
    final sp = await SharedPreferences.getInstance();
    final code = sp.getString(kPrefLocale);
    if (code != null && supportedCodes.contains(code)) {
      setState(() => _locale = Locale(code));
    }
  }

  static const supportedCodes = [
    'en', 'hi', 'bn', 'mr', 'te', 'ta', 'gu', 'kn', 'ml', 'or', 'pa', 'as'
  ];

  void setLocale(Locale l) async {
    setState(() => _locale = l);
    final sp = await SharedPreferences.getInstance();
    await sp.setString(kPrefLocale, l.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sarkari Yojana Helper',
      debugShowCheckedModeBanner: false,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: _theme(Brightness.light),
      darkTheme: _theme(Brightness.dark),
      home: const HomeScreen(),
    );
  }

  ThemeData _theme(Brightness b) {
    const seed = Color(0xFF15693B);
    final scheme = ColorScheme.fromSeed(seedColor: seed, brightness: b);
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: scheme.outlineVariant.withValues(alpha: .5)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      snackBarTheme: const SnackBarThemeData(behavior: SnackBarBehavior.floating),
    );
  }
}
