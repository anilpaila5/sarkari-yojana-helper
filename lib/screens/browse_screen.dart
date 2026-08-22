import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/scheme.dart';
import '../services/matcher.dart';
import '../services/scheme_repository.dart';
import '../widgets/scheme_card.dart';
import '../widgets/state_names.dart';
import 'detail_screen.dart';

class BrowseScreen extends StatelessWidget {
  final SchemeRepository repo;
  const BrowseScreen({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return FutureBuilder<List<Scheme>>(
      future: repo.loadAll(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final all = snap.data!;
        final categories = SchemeCategory.values;
        final statesWithSchemes =
            kStates.where((st) => all.any((s) => s.states.contains(st.code))).toList();

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(l10n.browseCategories,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.6,
              children: [
                for (final c in categories)
                  _CategoryTile(
                    label: _catLabel(c, l10n),
                    icon: _catIcon(c),
                    count: all.where((s) => s.category == c).length,
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                CategoryListScreen(category: c, repo: repo))),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            Text(l10n.browseStates,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.flag),
                    title: Text(l10n.centralAllIndia),
                    trailing: Text(l10n.schemeCount(
                        all.where((s) => s.level == 'central').length)),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CentralListScreen(repo: null))),
                  ),
                  const Divider(height: 1),
                  ...statesWithSchemes.map((st) => ListTile(
                        leading: const Icon(Icons.location_on_outlined),
                        title: Text(stateDisplayName(st.code, l10n)),
                        trailing: Text(l10n.schemeCount(all
                            .where((s) => s.states.contains(st.code))
                            .length)),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => StateListScreen(
                                    stateCode: st.code, repo: repo))),
                      )),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

String _catLabel(SchemeCategory c, AppLocalizations l10n) => switch (c) {
      SchemeCategory.agriculture => l10n.catAgriculture,
      SchemeCategory.education => l10n.catEducation,
      SchemeCategory.health => l10n.catHealth,
      SchemeCategory.housing => l10n.catHousing,
      SchemeCategory.women => l10n.catWomen,
      SchemeCategory.senior => l10n.catSenior,
      SchemeCategory.business => l10n.catBusiness,
      SchemeCategory.employment => l10n.catEmployment,
      SchemeCategory.energy => l10n.catEnergy,
      SchemeCategory.socialSecurity => l10n.catSocialSecurity,
      SchemeCategory.food => l10n.catFood,
    };

IconData _catIcon(SchemeCategory c) => switch (c) {
      SchemeCategory.agriculture => Icons.agriculture,
      SchemeCategory.education => Icons.school,
      SchemeCategory.health => Icons.health_and_safety,
      SchemeCategory.housing => Icons.home,
      SchemeCategory.women => Icons.family_restroom,
      SchemeCategory.senior => Icons.elderly,
      SchemeCategory.business => Icons.storefront,
      SchemeCategory.employment => Icons.work,
      SchemeCategory.energy => Icons.solar_power,
      SchemeCategory.socialSecurity => Icons.savings,
      SchemeCategory.food => Icons.rice_bowl,
    };

class _CategoryTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final int count;
  final VoidCallback onTap;

  const _CategoryTile(
      {required this.label,
      required this.icon,
      required this.count,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(icon, size: 22, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(label,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SchemeListPage extends StatelessWidget {
  final String title;
  final List<Scheme> schemes;
  const _SchemeListPage({required this.title, required this.schemes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
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

class CategoryListScreen extends StatelessWidget {
  final SchemeCategory category;
  final SchemeRepository repo;
  const CategoryListScreen({super.key, required this.category, required this.repo});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return FutureBuilder<List<Scheme>>(
      future: repo.loadAll(),
      builder: (context, snap) {
        final schemes = (snap.data ?? [])
            .where((s) => s.category == category)
            .toList();
        return _SchemeListPage(title: _catLabel(category, l10n), schemes: schemes);
      },
    );
  }
}

class CentralListScreen extends StatelessWidget {
  final SchemeRepository? repo;
  const CentralListScreen({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return FutureBuilder<List<Scheme>>(
      future: (repo ?? SchemeRepository()).loadAll(),
      builder: (context, snap) {
        final schemes = (snap.data ?? [])
            .where((s) => s.level == 'central')
            .toList();
        return _SchemeListPage(title: l10n.centralAllIndia, schemes: schemes);
      },
    );
  }
}

class StateListScreen extends StatelessWidget {
  final String stateCode;
  final SchemeRepository repo;
  const StateListScreen({super.key, required this.stateCode, required this.repo});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return FutureBuilder<List<Scheme>>(
      future: repo.loadAll(),
      builder: (context, snap) {
        final schemes = (snap.data ?? [])
            .where((s) => s.states.contains(stateCode))
            .toList();
        return _SchemeListPage(
            title: l10n.stateSchemesOf(stateDisplayName(stateCode, l10n)),
            schemes: schemes);
      },
    );
  }
}
