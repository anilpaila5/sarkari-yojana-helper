// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'ਸਰਕਾਰੀ ਯੋਜਨਾ ਹੈਲਪਰ';

  @override
  String get tagline => 'ਸਰਕਾਰੀ ਸਕੀਮਾਂ, ਸੌਖੀ ਭਾਸ਼ਾ ਵਿੱਚ';

  @override
  String get navHome => 'ਹੋਮ';

  @override
  String get navBrowse => 'ਬ੍ਰਾਊਜ਼';

  @override
  String get navSearch => 'ਖੋਜ';

  @override
  String get navSettings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get findSchemesCta => 'ਮੇਰੇ ਲਈ ਯੋਜਨਾਵਾਂ ਲੱਭੋ';

  @override
  String get quizSubtitle =>
      '6 ਸੌਖੇ ਸਵਾਲਾਂ ਦੇ ਜਵਾਬ ਦਿਓ। ਨਾ ਸਾਈਨ-ਅੱਪ, ਨਾ ਡਾਟਾ ਫੋਨ ਤੋਂ ਬਾਹਰ ਜਾਂਦਾ ਹੈ।';

  @override
  String get startQuiz => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get retakeQuiz => 'ਜਵਾਬ ਬਦਲੋ';

  @override
  String get yourMatches => 'ਤੁਹਾਡੇ ਲਈ ਯੋਜਨਾਵਾਂ';

  @override
  String matchesCount(int n) {
    return '$n ਯੋਜਨਾਵਾਂ ਮਿਲੀਆਂ';
  }

  @override
  String stepOf(int current, int total) {
    return 'ਸਵਾਲ $current / $total';
  }

  @override
  String get qState => 'ਤੁਸੀਂ ਕਿਸ ਰਾਜ ਵਿੱਚ ਰਹਿੰਦੇ ਹੋ?';

  @override
  String get qAge => 'ਤੁਹਾਡੀ ਉਮਰ ਕਿੰਨੀ ਹੈ?';

  @override
  String get qGender => 'ਤੁਹਾਡਾ ਲਿੰਗ';

  @override
  String get qCategory => 'ਸਮਾਜਿਕ ਸ਼੍ਰੇਣੀ';

  @override
  String get qIncome => 'ਪਰਿਵਾਰ ਦੀ ਸਾਲਾਨਾ ਕਮਾਈ';

  @override
  String get qOccupation => 'ਤੁਸੀਂ ਕੀ ਕੰਮ ਕਰਦੇ ਹੋ?';

  @override
  String get qArea => 'ਤੁਸੀਂ ਕਿੱਥੇ ਰਹਿੰਦੇ ਹੋ?';

  @override
  String get selectState => 'ਆਪਣਾ ਰਾਜ ਚੁਣੋ';

  @override
  String get skipOptional => 'ਛੱਡੋ';

  @override
  String get genderMale => 'ਮਰਦ';

  @override
  String get genderFemale => 'ਔਰਤ';

  @override
  String get genderOther => 'ਹੋਰ';

  @override
  String get preferNotSay => 'ਦੱਸਣਾ ਨਹੀਂ ਚਾਹੁੰਦੇ';

  @override
  String get catGeneral => 'ਆਮ';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'ਘੱਟ ਗਿਣਤੀ';

  @override
  String get occFarmer => 'ਕਿਸਾਨ';

  @override
  String get occStudent => 'ਵਿਦਿਆਰਥੀ';

  @override
  String get occSelfEmployed => 'ਆਪਣਾ ਧੰਦਾ';

  @override
  String get occSalaried => 'ਨੌਕਰੀ (ਤਨਖਾਹ)';

  @override
  String get occUnemployed => 'ਬੇਰੁਜ਼ਗਾਰ / ਨੌਕਰੀ ਲੱਭ ਰਹੇ';

  @override
  String get occHomemaker => 'ਘਰੇਲੂ ਔਰਤ';

  @override
  String get occRetired => 'ਸੀਨੀਅਰ ਸਿਟੀਜ਼ਨ / ਰਿਟਾਇਰਡ';

  @override
  String get areaRural => 'ਪਿੰਡ / ਪੇਂਡੂ';

  @override
  String get areaUrban => 'ਸ਼ਹਿਰ / ਨਗਰ';

  @override
  String get incomeBelow1L => '₹1 ਲੱਖ ਤੋਂ ਘੱਟ';

  @override
  String get income1to25 => '₹1–2.5 ਲੱਖ';

  @override
  String get income25to5 => '₹2.5–5 ਲੱਖ';

  @override
  String get income5to8 => '₹5–8 ਲੱਖ';

  @override
  String get incomeAbove8 => '₹8 ਲੱਖ ਤੋਂ ਵੱਧ';

  @override
  String get next => 'ਅੱਗੇ';

  @override
  String get back => 'ਪਿੱਛੇ';

  @override
  String get seeResults => 'ਮੇਰੀਆਂ ਯੋਜਨਾਵਾਂ ਵੇਖੋ';

  @override
  String get eligibleBadge => 'ਯੋਗ ਹੋ ਸਕਦੇ ਹੋ';

  @override
  String get maybeBadge => 'ਸ਼ਾਇਦ ਯੋਗ';

  @override
  String get resultsEmpty => 'ਕੋਈ ਯੋਜਨਾ ਨਹੀਂ ਮਿਲੀ';

  @override
  String get resultsEmptyHint =>
      '\'ਬ੍ਰਾਊਜ਼\' ਵਿੱਚ ਜਾ ਕੇ ਸ਼੍ਰੇਣੀ ਜਾਂ ਰਾਜ ਅਨੁਸਾਰ ਸਾਰੀਆਂ ਯੋਜਨਾਵਾਂ ਵੇਖੋ।';

  @override
  String get searchHint => 'ਯੋਜਨਾ ਖੋਜੋ, ਜਿਵੇਂ PM ਕਿਸਾਨ, ਸਕਾਲਰਸ਼ਿਪ…';

  @override
  String get searchNoResults => 'ਕੁਝ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get searchNoResultsHint =>
      'ਛੋਟੇ ਸ਼ਬਦ ਵਰਤੋ: \'ਕਿਸਾਨ\', \'ਪੈਨਸ਼ਨ\', \'ਕਰਜ਼ਾ\'।';

  @override
  String get browseCategories => 'ਸ਼੍ਰੇਣੀ ਅਨੁਸਾਰ';

  @override
  String get browseStates => 'ਰਾਜ ਅਨੁਸਾਰ';

  @override
  String get centralAllIndia => 'ਕੇਂਦਰ (ਪੂਰਾ ਭਾਰਤ)';

  @override
  String stateSchemesOf(String state) {
    return '$state ਯੋਜਨਾਵਾਂ';
  }

  @override
  String get catAgriculture => 'ਖੇਤੀਬਾੜੀ ਅਤੇ ਕਿਸਾਨ';

  @override
  String get catEducation => 'ਸਿੱਖਿਆ ਅਤੇ ਸਕਾਲਰਸ਼ਿਪ';

  @override
  String get catHealth => 'ਸਿਹਤ ਅਤੇ ਬੀਮਾ';

  @override
  String get catHousing => 'ਘਰ';

  @override
  String get catWomen => 'ਔਰਤਾਂ ਅਤੇ ਬੱਚੇ';

  @override
  String get catSenior => 'ਸੀਨੀਅਰ ਸਿਟੀਜ਼ਨ';

  @override
  String get catBusiness => 'ਕਾਰੋਬਾਰ ਅਤੇ MSME';

  @override
  String get catEmployment => 'ਰੁਜ਼ਗਾਰ ਅਤੇ ਹੁਨਰ';

  @override
  String get catEnergy => 'ਊਰਜਾ ਅਤੇ ਸੋਲਰ';

  @override
  String get catSocialSecurity => 'ਪੈਨਸ਼ਨ ਅਤੇ ਸਮਾਜਿਕ ਸੁਰੱਖਿਆ';

  @override
  String get catFood => 'ਰਾਸ਼ਨ ਅਤੇ ਭੋਜਨ';

  @override
  String get benefitsTitle => 'ਲਾਭ';

  @override
  String get eligibilityTitle => 'ਕੌਣ ਅਰਜ਼ੀ ਦੇ ਸਕਦਾ ਹੈ';

  @override
  String get documentsTitle => 'ਲੋੜੀਂਦੇ ਦਸਤਾਵੇਜ਼';

  @override
  String get applyCta => 'ਸਰਕਾਰੀ ਪੋਰਟਲ ਉੱਤੇ ਅਰਜ਼ੀ ਦਿਓ';

  @override
  String get sourcePortal => 'ਸਰਕਾਰੀ ਜਾਣਕਾਰੀ ਸਰੋਤ';

  @override
  String lastVerified(String date) {
    return '$date ਨੂੰ ਜਾਣਕਾਰੀ ਜਾਂਚੀ ਗਈ';
  }

  @override
  String get extraRulesTitle => 'ਹੋਰ ਸ਼ਰਤਾਂ';

  @override
  String get disclaimerCard =>
      'ਇਹ ਸਰਕਾਰੀ ਐਪ ਨਹੀਂ ਹੈ। ਜਾਣਕਾਰੀ ਸਰਕਾਰੀ ਪੋਰਟਲਾਂ (myScheme, ਰਾਜ ਪੋਰਟਲ) ਤੋਂ ਲਈ ਗਈ ਹੈ। ਅਰਜ਼ੀ ਤੋਂ ਪਹਿਲਾਂ ਸਰਕਾਰੀ ਵੈੱਬਸਾਈਟ ਉੱਤੇ ਪੁਸ਼ਟੀ ਕਰੋ।';

  @override
  String get notGovtApp =>
      'ਸੁਤੰਤਰ ਹੈਲਪਰ ਐਪ — ਕਿਸੇ ਸਰਕਾਰੀ ਸੰਸਥਾ ਨਾਲ ਸਬੰਧਤ ਨਹੀਂ।';

  @override
  String get dataNote =>
      'ਪੂਰੀ ਤਰ੍ਹਾਂ ਆਫ਼ਲਾਈਨ ਚੱਲਦਾ ਹੈ। ਤੁਹਾਡੇ ਜਵਾਬ ਫੋਨ ਤੋਂ ਬਾਹਰ ਨਹੀਂ ਜਾਂਦੇ।';

  @override
  String get privacyTitle => 'ਪ੍ਰਾਈਵੇਸੀ';

  @override
  String get privacyBody =>
      'ਇਸ ਐਪ ਵਿੱਚ ਨਾ ਲੌਗਿਨ ਹੈ ਨਾ ਸਰਵਰ। ਜਵਾਬ ਸਿਰਫ਼ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਵਿੱਚ ਰਹਿੰਦੇ ਹਨ।';

  @override
  String get languageTitle => 'ਐਪ ਦੀ ਭਾਸ਼ਾ';

  @override
  String get shareAppTitle => 'ਇਹ ਐਪ ਸ਼ੇਅਰ ਕਰੋ';

  @override
  String get aboutVersion => 'ਡਾਟਾ ਪੈਕ ਸੰਸਕਰਣ';

  @override
  String get errorGeneric => 'ਕੁਝ ਗੜਬੜ ਹੋ ਗਿਆ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼';

  @override
  String get popularSchemes => 'ਇਸ ਸਮੇਂ ਪ੍ਰਸਿੱਧ';

  @override
  String schemeCount(int n) {
    return '$n ਯੋਜਨਾਵਾਂ';
  }

  @override
  String get applyWarning =>
      'ਸਿਰਫ਼ .gov.in / ਸਰਕਾਰੀ ਸਾਈਟਾਂ ਉੱਤੇ ਅਰਜ਼ੀ ਦਿਓ। ਏਜੰਟ ਨੂੰ ਪੈਸੇ ਨਾ ਦਿਓ।';

  @override
  String get savedAnswers => 'ਜਵਾਬ ਇਸ ਡਿਵਾਈਸ ਉੱਤੇ ਸੁਰੱਖਿਅਤ ਹਨ';

  @override
  String get noGuarantee =>
      'ਯੋਗਤਾ ਪੂਰੀ ਹੋਣ ਨਾਲ ਮਨਜ਼ੂਰੀ ਜਾਂ ਲਾਭ ਮਿਲਣ ਦੀ ਗਰੰਟੀ ਨਹੀਂ। ਅੰਤਿਮ ਫੈਸਲਾ ਸਬੰਧਤ ਸਰਕਾਰੀ ਵਿਭਾਗ ਦਾ ਹੁੰਦਾ ਹੈ।';

  @override
  String get relatedTitle => 'ਸਬੰਧਤ ਯੋਜਨਾਵਾਂ';
}
