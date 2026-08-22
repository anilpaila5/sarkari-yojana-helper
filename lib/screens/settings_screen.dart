import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart' show Share;

import '../l10n/app_localizations.dart';
import '../services/crash_log.dart';
import '../services/scheme_repository.dart';
import 'privacy_policy_screen.dart';
import '../main.dart';

class SettingsScreen extends StatelessWidget {
  final SchemeRepository repo;
  const SettingsScreen({super.key, required this.repo});

  static const _langNames = {
    'en': 'English',
    'hi': 'हिन्दी',
    'bn': 'বাংলা',
    'mr': 'मराठी',
    'te': 'తెలుగు',
    'ta': 'தமிழ்',
    'gu': 'ગુજરાતી',
    'kn': 'ಕನ್ನಡ',
    'ml': 'മലയാളം',
    'or': 'ଓଡ଼ିଆ',
    'pa': 'ਪੰਜਾਬੀ',
    'as': 'অসমীয়া',
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final current = Localizations.localeOf(context).languageCode;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(l10n.languageTitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              for (final e in _langNames.entries)
                RadioListTile<String>(
                  value: e.key,
                  groupValue: current,
                  title: Text(e.value),
                  onChanged: (v) {
                    if (v != null) SphApp.of(context).setLocale(Locale(v));
                  },
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.notGovtApp,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Row(children: [
                  Icon(Icons.privacy_tip_outlined,
                      size: 18, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(width: 8),
                  Text(l10n.privacyTitle,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ]),
                const SizedBox(height: 8),
                Text(l10n.privacyBody,
                    style: Theme.of(context).textTheme.bodySmall),
                TextButton.icon(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const PrivacyPolicyScreen())),
                  icon: const Icon(Icons.arrow_forward, size: 16),
                  label: Text('${l10n.privacyTitle} →'),
                ),
                const SizedBox(height: 4),
                Row(children: [
                  Icon(Icons.wifi_off,
                      size: 18, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Text(l10n.dataNote,
                          style: Theme.of(context).textTheme.bodySmall)),
                ]),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        FutureBuilder<String?>(
          future: CrashLog.read(),
          builder: (context, snap) {
            final log = snap.data;
            if (log == null || log.isEmpty) return const SizedBox.shrink();
            return Card(
              color: Theme.of(context).colorScheme.errorContainer,
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: Icon(Icons.bug_report,
                    color: Theme.of(context).colorScheme.onErrorContainer),
                title: Text('Report a problem',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).colorScheme.onErrorContainer)),
                subtitle: Text(
                    'The app hit an error. Tap to send us the details.',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onErrorContainer)),
                onTap: () async {
                  await Share.share(
                      'Sarkari Yojana Helper — problem report\n\n$log',
                      subject: 'App problem report');
                  await CrashLog.clear();
                },
              ),
            );
          },
        ),
        FilledButton.tonalIcon(
          onPressed: () => Share.share(
              'Sarkari Yojana Helper — find government schemes you are eligible for. https://play.google.com/store/apps/details?id=com.sarkariyojahelper.app'),
          icon: const Icon(Icons.share),
          label: Text(l10n.shareAppTitle),
        ),
        const SizedBox(height: 12),
        FutureBuilder<String>(
          future: _version(),
          builder: (context, snap) => Center(
            child: Text('${l10n.aboutVersion}: ${snap.data ?? "…"}',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant)),
          ),
        ),
      ],
    );
  }

  Future<String> _version() async {
    await repo.loadAll();
    return repo.version;
  }
}
