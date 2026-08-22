import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart' show Share;
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../models/scheme.dart';
import '../services/ad_service.dart';
import '../services/scheme_repository.dart';

class DetailScreen extends StatelessWidget {
  final Scheme scheme;
  const DetailScreen({super.key, required this.scheme});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).languageCode;
    final name = scheme.names[locale] ?? scheme.names['en'] ?? scheme.id;
    final benefit = scheme.benefits[locale] ?? scheme.benefits['en'] ?? '';
    final notes = scheme.eligibility.notes;
    final noteText =
        notes == null ? '' : (notes[locale] ?? notes['en'] ?? '');

    return Scaffold(
      appBar: AppBar(
        title: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
        actions: [
          IconButton(
            tooltip: l10n.shareAppTitle,
            icon: const Icon(Icons.share_outlined),
            onPressed: () => Share.share('$name\n\n$benefit'
                '\n\n${AppLocalizations.of(context)!.sourcePortal}: ${scheme.sourceUrl}'),
          ),
        ],
      ),
      bottomNavigationBar: const AdBanner(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _Section(
            title: l10n.benefitsTitle,
            icon: Icons.card_giftcard,
            child: Text(benefit, style: Theme.of(context).textTheme.bodyLarge),
          ),
          const SizedBox(height: 12),
          _Section(
            title: l10n.eligibilityTitle,
            icon: Icons.rule,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._eligibilityWidgets(context),
                if (noteText.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.info_outline, size: 16,
                            color: Theme.of(context).colorScheme.onSurfaceVariant),
                        const SizedBox(width: 6),
                        Expanded(child: Text(noteText,
                            style: Theme.of(context).textTheme.bodySmall)),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          if (scheme.documents.isNotEmpty)
            _Section(
              title: l10n.documentsTitle,
              icon: Icons.description_outlined,
              child: Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  for (final d in scheme.documents)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(d,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                ],
              ),
            ),
          const SizedBox(height: 20),
          if (scheme.applyUrl.isNotEmpty)
            FilledButton.icon(
              onPressed: () => _launch(context, scheme.applyUrl),
              icon: const Icon(Icons.open_in_new),
              label: Text(l10n.applyCta),
            ),
          if (scheme.sourceUrl.isNotEmpty)
            TextButton.icon(
              onPressed: () => _launch(context, scheme.sourceUrl),
              icon: const Icon(Icons.link, size: 16),
              label: Text(l10n.sourcePortal,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          if (scheme.lastVerified.isNotEmpty) ...[
            const SizedBox(height: 8),
            Center(
              child: Text(l10n.lastVerified(scheme.lastVerified),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant)),
            ),
          ],
          FutureBuilder<List<Scheme>>(
            future: SchemeRepository().loadAll(),
            builder: (context, snap) {
              final all = snap.data;
              if (all == null || all.length <= 1) {
                return const SizedBox.shrink();
              }
              final related = all
                  .where((s) =>
                      s.id != scheme.id &&
                      s.category == scheme.category &&
                      _sameRegion(s, scheme))
                  .toList();
              if (related.isEmpty) return const SizedBox.shrink();
              return Padding(
                padding: const EdgeInsets.only(top: 4),
                child: _Section(
                  title: l10n.relatedTitle,
                  icon: Icons.auto_awesome_motion_outlined,
                  child: Column(
                    children: [
                      for (final r in related.take(4))
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          leading: const Icon(Icons.arrow_forward_ios,
                              size: 14),
                          title: Text(
                            r.names[locale] ?? r.names['en'] ?? r.id,
                            style:
                                Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DetailScreen(scheme: r))),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          Card(
            color: Colors.amber.shade50,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.warning_amber_rounded,
                      size: 18, color: Colors.amber.shade800),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Text(l10n.applyWarning,
                          style: Theme.of(context).textTheme.bodySmall)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _eligibilityWidgets(BuildContext context) {
    final e = scheme.eligibility;
    final out = <Widget>[];
    if (e.minAge != null || e.maxAge != null) {
      final lo = e.minAge ?? 0;
      final hi = e.maxAge != null ? '${e.maxAge}' : '+';
      out.add(Text('• Age: $lo–$hi'));
    }
    if (e.gender != null && e.gender!.isNotEmpty) {
      final g = switch (e.gender) {
        'male' => 'Male',
        'female' => 'Female',
        _ => 'Other',
      };
      out.add(Text('• Gender: $g'));
    }
    if (e.categories.isNotEmpty) {
      out.add(Text('• Category: ${e.categories.map((c) => c.toUpperCase()).join(', ')}'));
    }
    if (e.maxIncomeLakh != null) {
      out.add(Text('• Family income up to ₹${_fmt(e.maxIncomeLakh!)} lakh/year'));
    }
    if (e.occupations.isNotEmpty) {
      out.add(Text('• Occupation: ${e.occupations.join(', ')}'));
    }
    if (e.ruralOnly) {
      out.add(const Text('• Rural residents only'));
    }
    return out;
  }

  String _fmt(double v) =>
      v == v.truncateToDouble() ? v.toInt().toString() : v.toString();

  bool _sameRegion(Scheme a, Scheme b) {
    if (a.states.isEmpty || b.states.isEmpty) return a.level == b.level;
    return a.states.any(b.states.contains);
  }

  void _launch(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    try {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.errorGeneric)));
      }
    }
  }
}

class _Section extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _Section({required this.title, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ]),
            const SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}
