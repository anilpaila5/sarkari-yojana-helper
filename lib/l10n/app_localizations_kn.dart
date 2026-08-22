// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ಸರ್ಕಾರಿ ಯೋಜನೆ ಹೆಲ್ಪರ್';

  @override
  String get tagline => 'ಸರ್ಕಾರಿ ಯೋಜನೆಗಳು, ಸರಳ ಭಾಷೆಯಲ್ಲಿ';

  @override
  String get navHome => 'ಮುಖಪುಟ';

  @override
  String get navBrowse => 'ಬ್ರೌಸ್';

  @override
  String get navSearch => 'ಹುಡುಕು';

  @override
  String get navSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get findSchemesCta => 'ನನಗಾಗಿ ಯೋಜನೆಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get quizSubtitle =>
      '6 ಸರಳ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸಿ. ಸೈನ್-ಅಪ್ ಬೇಡ. ಮಾಹಿತಿ ಫೋನ್ ಹೊರಗೆ ಹೋಗುವುದಿಲ್ಲ.';

  @override
  String get startQuiz => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get retakeQuiz => 'ಉತ್ತರಗಳನ್ನು ಬದಲಾಯಿಸಿ';

  @override
  String get yourMatches => 'ನಿಮಗಾಗಿ ಯೋಜನೆಗಳು';

  @override
  String matchesCount(int n) {
    return '$n ಯೋಜನೆಗಳು ಸಿಕ್ಕಿವೆ';
  }

  @override
  String stepOf(int current, int total) {
    return 'ಪ್ರಶ್ನೆ $current / $total';
  }

  @override
  String get qState => 'ನೀವು ಯಾವ ರಾಜ್ಯದಲ್ಲಿ ವಾಸಿಸುತ್ತೀರಿ?';

  @override
  String get qAge => 'ನಿಮ್ಮ ವಯಸ್ಸು ಎಷ್ಟು?';

  @override
  String get qGender => 'ನಿಮ್ಮ ಲಿಂಗ';

  @override
  String get qCategory => 'ಸಾಮಾಜಿಕ ವರ್ಗ';

  @override
  String get qIncome => 'ಕುಟುಂಬದ ವಾರ್ಷಿಕ ಆದಾಯ';

  @override
  String get qOccupation => 'ನೀವು ಏನು ಕೆಲಸ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get qArea => 'ನೀವು ಎಲ್ಲಿ ವಾಸಿಸುತ್ತೀರಿ?';

  @override
  String get selectState => 'ನಿಮ್ಮ ರಾಜ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get skipOptional => 'ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get genderMale => 'ಪುರುಷ';

  @override
  String get genderFemale => 'ಮಹಿಳೆ';

  @override
  String get genderOther => 'ಇತರೆ';

  @override
  String get preferNotSay => 'ಹೇಳಲು ಬಯಸುವುದಿಲ್ಲ';

  @override
  String get catGeneral => 'ಸಾಮಾನ್ಯ';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'ಅಲ್ಪಸಂಖ್ಯಾತ';

  @override
  String get occFarmer => 'ರೈತ';

  @override
  String get occStudent => 'ವಿದ್ಯಾರ್ಥಿ';

  @override
  String get occSelfEmployed => 'ಸ್ವಂತ ವ್ಯವಹಾರ';

  @override
  String get occSalaried => 'ಉದ್ಯೋಗ (ವೇತನ)';

  @override
  String get occUnemployed => 'ನಿರುದ್ಯೋಗಿ / ಉದ್ಯೋಗ ಹುಡುಕುತ್ತಿದ್ದಾರೆ';

  @override
  String get occHomemaker => 'ಗೃಹಿಣಿ';

  @override
  String get occRetired => 'ಹಿರಿಯ ನಾಗರಿಕ / ನಿವೃತ್ತ';

  @override
  String get areaRural => 'ಹಳ್ಳಿ / ಗ್ರಾಮೀಣ';

  @override
  String get areaUrban => 'ಪಟ್ಟಣ / ನಗರ';

  @override
  String get incomeBelow1L => '₹1 ಲಕ್ಷಕ್ಕಿಂತ ಕಡಿಮೆ';

  @override
  String get income1to25 => '₹1–2.5 ಲಕ್ಷ';

  @override
  String get income25to5 => '₹2.5–5 ಲಕ್ಷ';

  @override
  String get income5to8 => '₹5–8 ಲಕ್ಷ';

  @override
  String get incomeAbove8 => '₹8 ಲಕ್ಷಕ್ಕಿಂತ ಹೆಚ್ಚು';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get back => 'ಹಿಂದೆ';

  @override
  String get seeResults => 'ನನ್ನ ಯೋಜನೆಗಳನ್ನು ತೋರಿಸಿ';

  @override
  String get eligibleBadge => 'ಅರ್ಹರಾಗಿರಬಹುದು';

  @override
  String get maybeBadge => 'ಬಹುಶಃ ಅರ್ಹರು';

  @override
  String get resultsEmpty => 'ಯಾವುದೇ ಯೋಜನೆ ಸಿಗಲಿಲ್ಲ';

  @override
  String get resultsEmptyHint =>
      '\'ಬ್ರೌಸ್\'ನಲ್ಲಿ ವರ್ಗ ಅಥವಾ ರಾಜ್ಯವಾರು ಎಲ್ಲಾ ಯೋಜನೆಗಳನ್ನು ನೋಡಿ.';

  @override
  String get searchHint => 'ಯೋಜನೆ ಹುಡುಕಿ, ಉದಾ. PM ಕಿಸಾನ್, ಸ್ಕಾಲರ್‌ಶಿಪ್…';

  @override
  String get searchNoResults => 'ಏನೂ ಸಿಗಲಿಲ್ಲ';

  @override
  String get searchNoResultsHint =>
      'ಸಣ್ಣ ಪದಗಳನ್ನು ಪ್ರಯತ್ನಿಸಿ: \'ಕಿಸಾನ್\', \'ಪೆನ್ಷನ್\', \'ಸಾಲ\'.';

  @override
  String get browseCategories => 'ವರ್ಗವಾರು';

  @override
  String get browseStates => 'ರಾಜ್ಯವಾರು';

  @override
  String get centralAllIndia => 'ಕೇಂದ್ರ (ಅಖಿಲ ಭಾರತ)';

  @override
  String stateSchemesOf(String state) {
    return '$state ಯೋಜನೆಗಳು';
  }

  @override
  String get catAgriculture => 'ಕೃಷಿ ಮತ್ತು ರೈತರು';

  @override
  String get catEducation => 'ಶಿಕ್ಷಣ ಮತ್ತು ಸ್ಕಾಲರ್‌ಶಿಪ್';

  @override
  String get catHealth => 'ಆರೋಗ್ಯ ಮತ್ತು ವಿಮೆ';

  @override
  String get catHousing => 'ವಸತಿ';

  @override
  String get catWomen => 'ಮಹಿಳೆ ಮತ್ತು ಮಕ್ಕಳು';

  @override
  String get catSenior => 'ಹಿರಿಯ ನಾಗರಿಕರು';

  @override
  String get catBusiness => 'ವ್ಯವಹಾರ ಮತ್ತು MSME';

  @override
  String get catEmployment => 'ಉದ್ಯೋಗ ಮತ್ತು ಕೌಶಲ್ಯ';

  @override
  String get catEnergy => 'ಶಕ್ತಿ ಮತ್ತು ಸೌರ';

  @override
  String get catSocialSecurity => 'ಪಿಂಚಣಿ ಮತ್ತು ಸಮಾಜ ಭದ್ರತೆ';

  @override
  String get catFood => 'ರೇಷನ್ ಮತ್ತು ಆಹಾರ';

  @override
  String get benefitsTitle => 'ಅನುಕೂಲಗಳು';

  @override
  String get eligibilityTitle => 'ಯಾರು ಅರ್ಜಿ ಸಲ್ಲಿಸಬಹುದು';

  @override
  String get documentsTitle => 'ಅಗತ್ಯವಿರುವ ದಾಖಲೆಗಳು';

  @override
  String get applyCta => 'ಅಧಿಕೃತ ಪೋರ್ಟಲ್‌ನಲ್ಲಿ ಅರ್ಜಿ ಸಲ್ಲಿಸಿ';

  @override
  String get sourcePortal => 'ಅಧಿಕೃತ ಮಾಹಿತಿ ಮೂಲ';

  @override
  String lastVerified(String date) {
    return '$date ರಂದು ಮಾಹಿತಿ ಪರಿಶೀಲಿಸಲಾಗಿದೆ';
  }

  @override
  String get extraRulesTitle => 'ಇತರ ಷರತ್ತುಗಳು';

  @override
  String get disclaimerCard =>
      'ಇದು ಸರ್ಕಾರಿ ಆ್ಯಪ್ ಅಲ್ಲ. ಮಾಹಿತಿ ಅಧಿಕೃತ ಪೋರ್ಟಲ್‌ಗಳಿಂದ (myScheme, ರಾಜ್ಯ ಪೋರ್ಟಲ್‌ಗಳು) ಸಂಗ್ರಹಿಸಲಾಗಿದೆ. ಅರ್ಜಿ ಸಲ್ಲಿಸುವ ಮೊದಲು ಅಧಿಕೃತ ವೆಬ್‌ಸೈಟ್‌ನಲ್ಲಿ ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get notGovtApp =>
      'ಸ್ವತಂತ್ರ ಹೆಲ್ಪರ್ ಆ್ಯಪ್ — ಯಾವುದೇ ಸರ್ಕಾರಿ ಸಂಸ್ಥೆಗೆ ಸಂಬಂಧಿಸಿಲ್ಲ.';

  @override
  String get dataNote =>
      'ಸಂಪೂರ್ಣ ಆಫ್‌ಲೈನ್‌ನಲ್ಲಿ ಕೆಲಸ ಮಾಡುತ್ತದೆ. ನಿಮ್ಮ ಉತ್ತರಗಳು ಫೋನ್ ಹೊರಗೆ ಹೋಗುವುದಿಲ್ಲ.';

  @override
  String get privacyTitle => 'ಗೋಪ್ಯತೆ';

  @override
  String get privacyBody =>
      'ಈ ಆ್ಯಪ್‌ನಲ್ಲಿ ಲಾಗಿನ್ ಅಥವಾ ಸರ್ವರ್ ಇಲ್ಲ. ಉತ್ತರಗಳು ನಿಮ್ಮ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ ಇರುತ್ತವೆ.';

  @override
  String get languageTitle => 'ಆ್ಯಪ್ ಭಾಷೆ';

  @override
  String get shareAppTitle => 'ಈ ಆ್ಯಪ್ ಶೇರ್ ಮಾಡಿ';

  @override
  String get aboutVersion => 'ಡೇಟಾ ಪ್ಯಾಕ್ ಆವೃತ್ತಿ';

  @override
  String get errorGeneric => 'ಏನೋ ತಪ್ಪಾಗಿದೆ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get popularSchemes => 'ಈಗ ಜನಪ್ರಿಯ';

  @override
  String schemeCount(int n) {
    return '$n ಯೋಜನೆಗಳು';
  }

  @override
  String get applyWarning =>
      '.gov.in / ಅಧಿಕೃತ ಸೈಟ್‌ಗಳಲ್ಲಿ ಮಾತ್ರ ಅರ್ಜಿ ಸಲ್ಲಿಸಿ. ಏಜೆಂಟ್‌ಗಳಿಗೆ ಹಣ ಕೊಡಬೇಡಿ.';

  @override
  String get savedAnswers => 'ಉತ್ತರಗಳು ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get noGuarantee =>
      'ಅರ್ಹತಾ ಮಾನದಂಡ ಪೂರೈಸಿದರೆ ಅನುಮೋದನೆ ಅಥವಾ ಪ್ರಯೋಜನ ಖಚಿತ ಎಂಬ ಖಾತರಿ ಇಲ್ಲ. ಅಂತಿಮ ನಿರ್ಧಾರ ಸಂಬಂಧಿಸಿದ ಸರ್ಕಾರಿ ಇಲಾಖೆಗೆ ಸೇರಿದೆ.';

  @override
  String get relatedTitle => 'ಸಂಬಂಧಿತ ಯೋಜನೆಗಳು';
}
