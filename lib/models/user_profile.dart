enum Gender { male, female, other, unknown }

enum SocialCategory { general, obc, sc, st, ews, minority, unknown }

enum Occupation {
  farmer,
  student,
  selfEmployed,
  salaried,
  unemployed,
  homemaker,
  retired,
  unknown
}

enum AreaType { rural, urban, unknown }

extension GenderX on Gender {
  String get wire => switch (this) {
        Gender.male => 'male',
        Gender.female => 'female',
        Gender.other => 'other',
        Gender.unknown => '',
      };

  static Gender fromWire(String? s) => switch (s) {
        'male' => Gender.male,
        'female' => Gender.female,
        'other' => Gender.other,
        _ => Gender.unknown,
      };
}

extension SocialCategoryX on SocialCategory {
  String get wire => switch (this) {
        SocialCategory.general => 'general',
        SocialCategory.obc => 'obc',
        SocialCategory.sc => 'sc',
        SocialCategory.st => 'st',
        SocialCategory.ews => 'ews',
        SocialCategory.minority => 'minority',
        SocialCategory.unknown => '',
      };

  static SocialCategory fromWire(String? s) => switch (s) {
        'general' => SocialCategory.general,
        'obc' => SocialCategory.obc,
        'sc' => SocialCategory.sc,
        'st' => SocialCategory.st,
        'ews' => SocialCategory.ews,
        'minority' => SocialCategory.minority,
        _ => SocialCategory.unknown,
      };
}

extension OccupationX on Occupation {
  String get wire => switch (this) {
        Occupation.farmer => 'farmer',
        Occupation.student => 'student',
        Occupation.selfEmployed => 'self_employed',
        Occupation.salaried => 'salaried',
        Occupation.unemployed => 'unemployed',
        Occupation.homemaker => 'homemaker',
        Occupation.retired => 'retired',
        Occupation.unknown => '',
      };

  static Occupation fromWire(String? s) => switch (s) {
        'farmer' => Occupation.farmer,
        'student' => Occupation.student,
        'self_employed' => Occupation.selfEmployed,
        'salaried' => Occupation.salaried,
        'unemployed' => Occupation.unemployed,
        'homemaker' => Occupation.homemaker,
        'retired' => Occupation.retired,
        _ => Occupation.unknown,
      };
}

class UserProfile {
  final String state;
  final int? age;
  final Gender gender;
  final SocialCategory category;
  final double? incomeLakh;
  final Occupation occupation;
  final AreaType area;

  const UserProfile({
    this.state = '',
    this.age,
    this.gender = Gender.unknown,
    this.category = SocialCategory.unknown,
    this.incomeLakh,
    this.occupation = Occupation.unknown,
    this.area = AreaType.unknown,
  });

  bool get isBlank =>
      state.isEmpty &&
      age == null &&
      gender == Gender.unknown &&
      category == SocialCategory.unknown &&
      incomeLakh == null &&
      occupation == Occupation.unknown &&
      area == AreaType.unknown;
}
