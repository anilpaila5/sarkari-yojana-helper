import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/scheme.dart';
import '../services/scheme_repository.dart';
import '../services/matcher.dart';
import '../widgets/scheme_card.dart';
import 'detail_screen.dart';

class SearchScreen extends StatelessWidget {
  final SchemeRepository repo;
  const SearchScreen({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: TextField(
            decoration: InputDecoration(
              hintText: l10n.searchHint,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (q) => _openResults(context, q),
          ),
        ),
        Expanded(
          child: FutureBuilder<List<Scheme>>(
            future: repo.loadAll(),
            builder: (context, snap) {
              if (!snap.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final popular =
                  snap.data!.where((s) => s.popular).take(5).toList();
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Text(l10n.popularSchemes,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  for (final s in popular)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: SchemeCard(
                        scored: ScoredScheme(s, MatchResult.maybe),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailScreen(scheme: s))),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void _openResults(BuildContext context, String q) async {
    final all = await repo.loadAll();
    if (!context.mounted) return;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>
                _SearchResultsPage(query: q, schemes: Matcher.search(all, q))));
  }
}

class _SearchResultsPage extends StatelessWidget {
  final String query;
  final List<Scheme> schemes;
  const _SearchResultsPage({required this.query, required this.schemes});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text('"$query"')),
      body: schemes.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search_off,
                        size: 48, color: Theme.of(context).colorScheme.outline),
                    const SizedBox(height: 12),
                    Text(l10n.searchNoResults,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 6),
                    Text(l10n.searchNoResultsHint,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: schemes.length,
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SchemeCard(
                  scored: ScoredScheme(schemes[i], MatchResult.maybe),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailScreen(scheme: schemes[i]))),
                ),
              ),
            ),
    );
  }
}
