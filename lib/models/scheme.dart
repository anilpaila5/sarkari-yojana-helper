enum SchemeCategory {
  agriculture,
  education,
  health,
  housing,
  women,
  senior,
  business,
  employment,
  energy,
  socialSecurity,
  food,
}

extension SchemeCategoryX on SchemeCategory {
  String get key {
    switch (this) {
      case SchemeCategory.agriculture:
        return 'agriculture';
      case SchemeCategory.education:
        return 'education';
      case SchemeCategory.health:
        return 'health';
      case SchemeCategory.housing:
        return 'housing';
      case SchemeCategory.women:
        return 'women';
      case SchemeCategory.senior:
        return 'senior';
      case SchemeCategory.business:
        return 'business';
      case SchemeCategory.employment:
        return 'employment';
      case SchemeCategory.energy:
        return 'energy';
      case SchemeCategory.socialSecurity:
        return 'social_security';
      case SchemeCategory.food:
        return 'food';
    }
  }

  static SchemeCategory fromKey(String key) {
    return SchemeCategory.values.firstWhere(
      (c) => c.key == key,
      orElse: () => SchemeCategory.socialSecurity,
    );
  }
}

typedef LocalizedText = Map<String, String>;

class Eligibility {
  final int? minAge;
  final int? maxAge;
  final String? gender;
  final List<String> categories;
  final double? maxIncomeLakh;
  final List<String> occupations;
  final bool ruralOnly;
  final LocalizedText? notes;

  const Eligibility({
    this.minAge,
    this.maxAge,
    this.gender,
    this.categories = const [],
    this.maxIncomeLakh,
    this.occupations = const [],
    this.ruralOnly = false,
    this.notes,
  });

  factory Eligibility.fromJson(Map<String, dynamic> j) => Eligibility(
        minAge: j['minAge'] as int?,
        maxAge: j['maxAge'] as int?,
        gender: j['gender'] as String?,
        categories: (j['categories'] as List<dynamic>? ?? [])
            .map((e) => e as String)
            .toList(),
        maxIncomeLakh: (j['maxIncomeLakh'] as num?)?.toDouble(),
        occupations: (j['occupations'] as List<dynamic>? ?? [])
            .map((e) => e as String)
            .toList(),
        ruralOnly: j['ruralOnly'] as bool? ?? false,
        notes: j['notes'] == null
            ? null
            : Map<String, String>.from(j['notes'] as Map),
      );

  Map<String, dynamic> toJson() => {
        if (minAge != null) 'minAge': minAge,
        if (maxAge != null) 'maxAge': maxAge,
        if (gender != null) 'gender': gender,
        if (categories.isNotEmpty) 'categories': categories,
        if (maxIncomeLakh != null) 'maxIncomeLakh': maxIncomeLakh,
        if (occupations.isNotEmpty) 'occupations': occupations,
        if (ruralOnly) 'ruralOnly': true,
        if (notes != null) 'notes': notes,
      };
}

class Scheme {
  final String id;
  final LocalizedText names;
  final List<String> aliases;
  final SchemeCategory category;
  final String level;
  final List<String> states;
  final LocalizedText benefits;
  final Eligibility eligibility;
  final List<String> documents;
  final String applyUrl;
  final String sourceUrl;
  final String lastVerified;
  final bool popular;

  const Scheme({
    required this.id,
    required this.names,
    required this.aliases,
    required this.category,
    required this.level,
    required this.states,
    required this.benefits,
    required this.eligibility,
    required this.documents,
    required this.applyUrl,
    required this.sourceUrl,
    required this.lastVerified,
    this.popular = false,
  });

  factory Scheme.fromJson(Map<String, dynamic> j) => Scheme(
        id: j['id'] as String,
        names: Map<String, String>.from(j['names'] as Map),
        aliases: (j['aliases'] as List<dynamic>? ?? [])
            .map((e) => (e as String).toLowerCase())
            .toList(),
        category: SchemeCategoryX.fromKey(j['category'] as String),
        level: j['level'] as String,
        states: (j['states'] as List<dynamic>? ?? [])
            .map((e) => e as String)
            .toList(),
        benefits: Map<String, String>.from(j['benefits'] as Map),
        eligibility: Eligibility.fromJson(
            j['eligibility'] as Map<String, dynamic>? ?? {}),
        documents: (j['documents'] as List<dynamic>? ?? [])
            .map((e) => e as String)
            .toList(),
        applyUrl: j['applyUrl'] as String? ?? '',
        sourceUrl: j['sourceUrl'] as String? ?? '',
        lastVerified: j['lastVerified'] as String? ?? '',
        popular: j['popular'] as bool? ?? false,
      );
}
