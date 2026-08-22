import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/matcher.dart';
import 'state_names.dart';

class SchemeCard extends StatelessWidget {
  final ScoredScheme scored;
  final VoidCallback onTap;

  const SchemeCard({super.key, required this.scored, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final s = scored.scheme;
    final locale = Localizations.localeOf(context).languageCode;
    final name = s.names[locale] ?? s.names['en'] ?? s.id;
    final benefit = s.benefits[locale] ?? s.benefits['en'] ?? '';

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(name,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ),
                  if (s.popular)
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Icon(Icons.local_fire_department,
                          size: 16, color: Colors.deepOrange.shade400),
                    ),
                ],
              ),
              if (benefit.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(benefit,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall),
              ],
              const SizedBox(height: 8),
              Row(
                children: [
                  _Badge(
                    label: scored.result == MatchResult.eligible
                        ? l10n.eligibleBadge
                        : l10n.maybeBadge,
                    color: scored.result == MatchResult.eligible
                        ? Colors.green.shade700
                        : Colors.orange.shade800,
                  ),
                  const SizedBox(width: 8),
                  _Badge(
                    label: s.level == 'central'
                        ? l10n.centralAllIndia
                        : (s.states.isNotEmpty
                            ? stateDisplayName(s.states.first, l10n)
                            : ''),
                    color: Theme.of(context).colorScheme.secondary,
                    soft: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class _Badge extends StatelessWidget {
  final String label;
  final Color color;
  final bool soft;

  const _Badge({required this.label, required this.color, this.soft = false});

  @override
  Widget build(BuildContext context) {
    if (label.isEmpty) return const SizedBox.shrink();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: soft ? color.withValues(alpha: .12) : color.withValues(alpha: .14),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: color)),
    );
  }
}
