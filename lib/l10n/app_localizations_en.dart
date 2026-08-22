// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Sarkari Yojana Helper';

  @override
  String get tagline => 'Government schemes made simple';

  @override
  String get navHome => 'Home';

  @override
  String get navBrowse => 'Browse';

  @override
  String get navSearch => 'Search';

  @override
  String get navSettings => 'Settings';

  @override
  String get findSchemesCta => 'Find schemes for me';

  @override
  String get quizSubtitle =>
      'Answer 6 quick questions. No sign-up. Nothing leaves your phone.';

  @override
  String get startQuiz => 'Start';

  @override
  String get retakeQuiz => 'Change my answers';

  @override
  String get yourMatches => 'Schemes for you';

  @override
  String matchesCount(int n) {
    return '$n matching schemes found';
  }

  @override
  String stepOf(int current, int total) {
    return 'Step $current of $total';
  }

  @override
  String get qState => 'Which state do you live in?';

  @override
  String get qAge => 'How old are you?';

  @override
  String get qGender => 'Your gender';

  @override
  String get qCategory => 'Social category';

  @override
  String get qIncome => 'Annual family income';

  @override
  String get qOccupation => 'What do you do?';

  @override
  String get qArea => 'Where do you live?';

  @override
  String get selectState => 'Select your state';

  @override
  String get skipOptional => 'Skip';

  @override
  String get genderMale => 'Male';

  @override
  String get genderFemale => 'Female';

  @override
  String get genderOther => 'Other';

  @override
  String get preferNotSay => 'Prefer not to say';

  @override
  String get catGeneral => 'General';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'Minority';

  @override
  String get occFarmer => 'Farmer';

  @override
  String get occStudent => 'Student';

  @override
  String get occSelfEmployed => 'Self-employed / Business';

  @override
  String get occSalaried => 'Salaried job';

  @override
  String get occUnemployed => 'Unemployed / Job seeker';

  @override
  String get occHomemaker => 'Homemaker';

  @override
  String get occRetired => 'Senior citizen / Retired';

  @override
  String get areaRural => 'Village / Rural';

  @override
  String get areaUrban => 'Town / City';

  @override
  String get incomeBelow1L => 'Below ₹1 lakh';

  @override
  String get income1to25 => '₹1–2.5 lakh';

  @override
  String get income25to5 => '₹2.5–5 lakh';

  @override
  String get income5to8 => '₹5–8 lakh';

  @override
  String get incomeAbove8 => 'Above ₹8 lakh';

  @override
  String get next => 'Next';

  @override
  String get back => 'Back';

  @override
  String get seeResults => 'See my schemes';

  @override
  String get eligibleBadge => 'Likely eligible';

  @override
  String get maybeBadge => 'May be eligible';

  @override
  String get resultsEmpty => 'No direct matches';

  @override
  String get resultsEmptyHint =>
      'Try Browse to explore all schemes by category or state.';

  @override
  String get searchHint => 'Search scheme, e.g. PM Kisan, scholarship…';

  @override
  String get searchNoResults => 'Nothing found';

  @override
  String get searchNoResultsHint =>
      'Try shorter words like \'kisan\', \'pension\', \'loan\'.';

  @override
  String get browseCategories => 'By category';

  @override
  String get browseStates => 'By state';

  @override
  String get centralAllIndia => 'Central (All India)';

  @override
  String stateSchemesOf(String state) {
    return '$state schemes';
  }

  @override
  String get catAgriculture => 'Agriculture & Farmers';

  @override
  String get catEducation => 'Education & Scholarships';

  @override
  String get catHealth => 'Health & Insurance';

  @override
  String get catHousing => 'Housing';

  @override
  String get catWomen => 'Women & Child';

  @override
  String get catSenior => 'Senior Citizens';

  @override
  String get catBusiness => 'Business & MSME';

  @override
  String get catEmployment => 'Jobs & Skills';

  @override
  String get catEnergy => 'Energy & Solar';

  @override
  String get catSocialSecurity => 'Pension & Social Security';

  @override
  String get catFood => 'Food & Ration';

  @override
  String get benefitsTitle => 'Benefits';

  @override
  String get eligibilityTitle => 'Who can apply';

  @override
  String get documentsTitle => 'Documents needed';

  @override
  String get applyCta => 'Apply on official portal';

  @override
  String get sourcePortal => 'Official info source';

  @override
  String lastVerified(String date) {
    return 'Details verified on $date';
  }

  @override
  String get extraRulesTitle => 'Other conditions';

  @override
  String get disclaimerCard =>
      'Not a government app. Information compiled from official public portals (myScheme, state portals). Always confirm on the official website before applying.';

  @override
  String get notGovtApp =>
      'Independent helper app — not affiliated with any government body.';

  @override
  String get dataNote =>
      'Works fully offline. Your answers never leave this phone.';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyBody =>
      'This app has no login and no server. Quiz answers stay on your device only.';

  @override
  String get languageTitle => 'App language';

  @override
  String get shareAppTitle => 'Share this app';

  @override
  String get aboutVersion => 'Data pack version';

  @override
  String get errorGeneric => 'Something went wrong. Please try again.';

  @override
  String get retry => 'Retry';

  @override
  String get popularSchemes => 'Popular right now';

  @override
  String schemeCount(int n) {
    return '$n schemes';
  }

  @override
  String get applyWarning =>
      'Apply only on .gov.in / official sites. Never pay agents.';

  @override
  String get savedAnswers => 'Answers saved on this device';

  @override
  String get noGuarantee =>
      'Meeting eligibility criteria does not guarantee approval or benefit. The final decision always rests with the concerned government department.';

  @override
  String get relatedTitle => 'Related schemes';
}
