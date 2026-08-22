import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../l10n/app_localizations.dart';
import '../models/scheme.dart';
import '../models/user_profile.dart';
import '../services/scheme_repository.dart';
import '../services/matcher.dart';
import '../services/ad_service.dart';
import '../widgets/scheme_card.dart';
import '../widgets/state_names.dart';
import 'browse_screen.dart';
import 'detail_screen.dart';
import 'quiz_screen.dart';
import 'search_screen.dart';
import 'settings_screen.dart';
import '../main.dart' show kPrefProfile;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tab = 0;
  final _repo = SchemeRepository();
  UserProfile _profile = const UserProfile();

  @override
  void initState() {
    super.initState();
    _restoreProfile();
    _prefetch();
    WidgetsBinding.instance.addPostFrameCallback((_) => initAds());
  }

  Future<void> _prefetch() async {
    await _repo.loadAll();
    if (mounted) setState(() {});
  }

  Future<void> _restoreProfile() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(kPrefProfile);
    if (raw == null || raw.isEmpty) return;
    try {
      final m = jsonDecode(raw) as Map<String, dynamic>;
      setState(() {
        _profile = UserProfile(
          state: m['state'] as String? ?? '',
          age: m['age'] as int?,
          gender: GenderX.fromWire(m['gender'] as String?),
          category: SocialCategoryX.fromWire(m['category'] as String?),
          incomeLakh: (m['income'] as num?)?.toDouble(),
          occupation: OccupationX.fromWire(m['occupation'] as String?),
          area: AreaType.unknown,
        );
      });
    } catch (_) {}
  }

  Future<void> _saveProfile(UserProfile p) async {
    setState(() => _profile = p);
    final sp = await SharedPreferences.getInstance();
    await sp.setString(kPrefProfile, jsonEncode({
      'state': p.state,
      'age': p.age,
      'gender': p.gender.wire,
      'category': p.category.wire,
      'income': p.incomeLakh,
      'occupation': p.occupation.wire,
    }));
  }

  void _openQuiz() async {
    final result = await Navigator.of(context).push<UserProfile>(
      MaterialPageRoute(builder: (_) => QuizScreen(initial: _profile)),
    );
    if (result != null) {
      await _saveProfile(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final pages = [
      _buildHomeTab(l10n),
      BrowseScreen(repo: _repo),
      SearchScreen(repo: _repo),
      SettingsScreen(repo: _repo),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.appTitle, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(l10n.tagline, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
      body: pages[_tab],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AdBanner(),
          NavigationBar(
            selectedIndex: _tab,
            onDestinationSelected: (i) => setState(() => _tab = i),
            destinations: [
              NavigationDestination(icon: const Icon(Icons.home_outlined), selectedIcon: const Icon(Icons.home), label: l10n.navHome),
              NavigationDestination(icon: const Icon(Icons.grid_view_outlined), selectedIcon: const Icon(Icons.grid_view), label: l10n.navBrowse),
              NavigationDestination(icon: const Icon(Icons.search), label: l10n.navSearch),
              NavigationDestination(icon: const Icon(Icons.settings_outlined), selectedIcon: const Icon(Icons.settings), label: l10n.navSettings),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHomeTab(AppLocalizations l10n) {
    final hasAnswers = !_profile.isBlank;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.findSchemesCta,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(l10n.quizSubtitle, style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 16),
                FilledButton.icon(
                  onPressed: _openQuiz,
                  icon: Icon(hasAnswers ? Icons.tune : Icons.quiz_outlined),
                  label: Text(hasAnswers ? l10n.retakeQuiz : l10n.startQuiz),
                ),
                if (hasAnswers) ...[
                  const SizedBox(height: 8),
                  Row(children: [
                    Icon(Icons.check_circle, size: 14, color: Colors.green.shade600),
                    const SizedBox(width: 4),
                    Expanded(child: Text(l10n.savedAnswers,
                        style: Theme.of(context).textTheme.bodySmall)),
                  ]),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _MatchesSection(profile: _profile, repo: _repo, onTap: (s) => _openDetail(s)),
        const SizedBox(height: 16),
        Card(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, size: 18,
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(l10n.notGovtApp,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(l10n.disclaimerCard, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 6),
                Text(l10n.noGuarantee,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _openDetail(Scheme s) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailScreen(scheme: s)));
  }
}

class _MatchesSection extends StatelessWidget {
  final UserProfile profile;
  final SchemeRepository repo;
  final void Function(Scheme) onTap;

  const _MatchesSection({required this.profile, required this.repo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    if (profile.isBlank) {
      return const SizedBox.shrink();
    }
    return FutureBuilder<List<Scheme>>(
      future: repo.loadAll(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(child: Padding(padding: EdgeInsets.all(24), child: CircularProgressIndicator()));
        }
        final ranked = Matcher.rank(snap.data!, profile);
        if (ranked.isEmpty) {
          return Card(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(l10n.resultsEmptyHint),
          ));
        }
        final top = ranked.take(6).toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${l10n.yourMatches} · ${l10n.matchesCount(ranked.length)}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...top.map((sc) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SchemeCard(scored: sc, onTap: () => onTap(sc.scheme)),
            )),
            if (profile.state.isNotEmpty)
              Text(stateDisplayName(profile.state, l10n),
                  style: Theme.of(context).textTheme.labelSmall),
          ],
        );
      },
    );
  }
}
