import '../models/scheme.dart';
import '../models/user_profile.dart';

enum MatchResult { eligible, maybe, ineligible }

class ScoredScheme {
  final Scheme scheme;
  final MatchResult result;
  const ScoredScheme(this.scheme, this.result);
}

class Matcher {
  static MatchResult evaluate(Scheme s, UserProfile p) {
    final e = s.eligibility;
    var anyUnknown = false;

    if (s.level == 'state' && s.states.isNotEmpty) {
      if (p.state.isEmpty) {
        anyUnknown = true;
      } else if (!s.states.contains(p.state)) {
        return MatchResult.ineligible;
      }
    }

    if (e.minAge != null || e.maxAge != null) {
      if (p.age == null) {
        anyUnknown = true;
      } else {
        if (e.minAge != null && p.age! < e.minAge!) {
          return MatchResult.ineligible;
        }
        if (e.maxAge != null && p.age! > e.maxAge!) {
          return MatchResult.ineligible;
        }
      }
    }

    if (e.gender != null && e.gender!.isNotEmpty) {
      switch (p.gender) {
        case Gender.unknown:
          anyUnknown = true;
        case Gender.other:
          if (e.gender == 'male' || e.gender == 'female') {
            anyUnknown = true;
          }
        default:
          if (p.gender.wire != e.gender) return MatchResult.ineligible;
      }
    }

    if (e.categories.isNotEmpty) {
      if (p.category == SocialCategory.unknown) {
        anyUnknown = true;
      } else if (!e.categories.contains(p.category.wire)) {
        return MatchResult.ineligible;
      }
    }

    if (e.maxIncomeLakh != null) {
      if (p.incomeLakh == null) {
        anyUnknown = true;
      } else if (p.incomeLakh! > e.maxIncomeLakh!) {
        return MatchResult.ineligible;
      }
    }

    if (e.occupations.isNotEmpty) {
      if (p.occupation == Occupation.unknown) {
        anyUnknown = true;
      } else {
        final wire = p.occupation.wire;
        final matchesOcc = e.occupations.contains(wire) ||
            (p.occupation == Occupation.retired &&
                e.occupations.contains('senior'));
        if (!matchesOcc) return MatchResult.ineligible;
      }
    }

    if (e.ruralOnly) {
      switch (p.area) {
        case AreaType.urban:
          return MatchResult.ineligible;
        case AreaType.rural:
          break;
        case AreaType.unknown:
          anyUnknown = true;
      }
    }

    return anyUnknown ? MatchResult.maybe : MatchResult.eligible;
  }

  static List<ScoredScheme> rank(List<Scheme> all, UserProfile p) {
    final out = <ScoredScheme>[];
    for (final s in all) {
      final r = evaluate(s, p);
      if (r != MatchResult.ineligible) out.add(ScoredScheme(s, r));
    }
    out.sort((a, b) {
      if (a.result != b.result) {
        return a.result == MatchResult.eligible ? -1 : 1;
      }
      if (a.scheme.popular != b.scheme.popular) {
        return a.scheme.popular ? -1 : 1;
      }
      return a.scheme.names['en']!.compareTo(b.scheme.names['en']!);
    });
    return out;
  }

  /// Search across English names, Hindi names and aliases.
  static List<Scheme> search(List<Scheme> all, String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return [];
    final terms = q.split(RegExp(r'\s+'));
    final hits = <Scheme>[];
    for (final s in all) {
      final haystack = <String>[
        ...s.aliases,
        ...s.names.values.map((v) => v.toLowerCase()),
      ].join(' ');
      var ok = true;
      for (final t in terms) {
        if (!haystack.contains(t)) {
          ok = false;
          break;
        }
      }
      if (ok) hits.add(s);
    }
    hits.sort((a, b) {
      if (a.popular != b.popular) return a.popular ? -1 : 1;
      return a.names['en']!.compareTo(b.names['en']!);
    });
    return hits;
  }
}
