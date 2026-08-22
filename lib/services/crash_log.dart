import 'package:shared_preferences/shared_preferences.dart';

/// Stores the last fatal error on-device so the user can report it from
/// Settings > "Report a problem" without needing a computer.
class CrashLog {
  static const _key = 'pref_last_crash';

  static Future<void> save(String details) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final trimmed =
          details.length > 4000 ? details.substring(0, 4000) : details;
      await sp.setString(_key, trimmed);
    } catch (_) {}
  }

  static Future<String?> read() async {
    try {
      final sp = await SharedPreferences.getInstance();
      return sp.getString(_key);
    } catch (_) {
      return null;
    }
  }

  static Future<void> clear() async {
    try {
      final sp = await SharedPreferences.getInstance();
      await sp.remove(_key);
    } catch (_) {}
  }
}
