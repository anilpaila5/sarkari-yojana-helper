// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'സർക്കാരി യോജന ഹെൽപ്പർ';

  @override
  String get tagline => 'സർക്കാർ പദ്ധതികൾ, ലളിതമായ ഭാഷയിൽ';

  @override
  String get navHome => 'ഹോം';

  @override
  String get navBrowse => 'ബ്രൗസ്';

  @override
  String get navSearch => 'തിരയുക';

  @override
  String get navSettings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get findSchemesCta => 'എനിക്കുള്ള പദ്ധതികൾ കണ്ടെത്തുക';

  @override
  String get quizSubtitle =>
      '6 എളുപ്പ ചോദ്യങ്ങൾക്ക് ഉത്തരം നൽകുക. സൈൻ-അപ്പ് വേണ്ട. വിവരങ്ങൾ ഫോണിൽ നിന്ന് പുറത്തുപോകുന്നില്ല.';

  @override
  String get startQuiz => 'ആരംഭിക്കുക';

  @override
  String get retakeQuiz => 'ഉത്തരങ്ങൾ മാറ്റുക';

  @override
  String get yourMatches => 'നിങ്ങൾക്കുള്ള പദ്ധതികൾ';

  @override
  String matchesCount(int n) {
    return '$n പദ്ധതികൾ കണ്ടെത്തി';
  }

  @override
  String stepOf(int current, int total) {
    return 'ചോദ്യം $current / $total';
  }

  @override
  String get qState => 'നിങ്ങൾ ഏത് സംസ്ഥാനത്താണ് താമസിക്കുന്നത്?';

  @override
  String get qAge => 'നിങ്ങളുടെ പ്രായമെത്ര?';

  @override
  String get qGender => 'നിങ്ങളുടെ ലിംഗഭേദം';

  @override
  String get qCategory => 'സാമൂഹിക വിഭാഗം';

  @override
  String get qIncome => 'കുടുംബ വാർഷിക വരുമാനം';

  @override
  String get qOccupation => 'നിങ്ങൾ എന്ത് ജോലി ചെയ്യുന്നു?';

  @override
  String get qArea => 'നിങ്ങൾ എവിടെയാണ് താമസിക്കുന്നത്?';

  @override
  String get selectState => 'നിങ്ങളുടെ സംസ്ഥാനം തിരഞ്ഞെടുക്കുക';

  @override
  String get skipOptional => 'ഒഴിവാക്കുക';

  @override
  String get genderMale => 'പുരുഷൻ';

  @override
  String get genderFemale => 'സ്ത്രീ';

  @override
  String get genderOther => 'മറ്റുള്ളവ';

  @override
  String get preferNotSay => 'പറയാൻ ആഗ്രഹിക്കുന്നില്ല';

  @override
  String get catGeneral => 'പൊതുവിഭാഗം';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'ന്യൂനപക്ഷം';

  @override
  String get occFarmer => 'കർഷകൻ';

  @override
  String get occStudent => 'വിദ്യാർത്ഥി';

  @override
  String get occSelfEmployed => 'സ്വന്തം ബിസിനസ്സ്';

  @override
  String get occSalaried => 'ശമ്പളജോലി';

  @override
  String get occUnemployed => 'തൊഴിലില്ലാത്തവർ / ജോലി തേടുന്നു';

  @override
  String get occHomemaker => 'വീട്ടമ്മ';

  @override
  String get occRetired => 'പ്രായമായവർ / വിരമിച്ചവർ';

  @override
  String get areaRural => 'ഗ്രാമം / ഗ്രാമീണം';

  @override
  String get areaUrban => 'പട്ടണം / നഗരം';

  @override
  String get incomeBelow1L => '₹1 ലക്ഷത്തിൽ താഴെ';

  @override
  String get income1to25 => '₹1–2.5 ലക്ഷം';

  @override
  String get income25to5 => '₹2.5–5 ലക്ഷം';

  @override
  String get income5to8 => '₹5–8 ലക്ഷം';

  @override
  String get incomeAbove8 => '₹8 ലക്ഷത്തിൽ കൂടുതൽ';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get back => 'പിന്നിലേക്ക്';

  @override
  String get seeResults => 'എന്റെ പദ്ധതികൾ കാണിക്കൂ';

  @override
  String get eligibleBadge => 'അർഹതയുണ്ടാകാം';

  @override
  String get maybeBadge => 'ഒരുപക്ഷേ അർഹർ';

  @override
  String get resultsEmpty => 'യോജിക്കുന്ന പദ്ധതിയില്ല';

  @override
  String get resultsEmptyHint =>
      '\'ബ്രൗസ്\' ഭാഗത്ത് വിഭാഗം അല്ലെങ്കിൽ സംസ്ഥാനം വഴി എല്ലാ പദ്ധതികളും കാണുക.';

  @override
  String get searchHint => 'പദ്ധതി തിരയുക, ഉദാ. PM കിസാൻ, സ്കോളർഷിപ്പ്…';

  @override
  String get searchNoResults => 'ഒന്നും കണ്ടില്ല';

  @override
  String get searchNoResultsHint =>
      'ചെറിയ വാക്കുകൾ പരീക്ഷിക്കുക: \'കിസാൻ\', \'പെൻഷൻ\', \'ലോൺ\'.';

  @override
  String get browseCategories => 'വിഭാഗം വഴി';

  @override
  String get browseStates => 'സംസ്ഥാനം വഴി';

  @override
  String get centralAllIndia => 'കേന്ദ്ര (ഇന്ത്യ മുഴുവൻ)';

  @override
  String stateSchemesOf(String state) {
    return '$state പദ്ധതികൾ';
  }

  @override
  String get catAgriculture => 'കൃഷി & കർഷകർ';

  @override
  String get catEducation => 'വിദ്യാഭ്യാസം & സ്കോളർഷിപ്പ്';

  @override
  String get catHealth => 'ആരോഗ്യം & ഇൻഷുറൻസ്';

  @override
  String get catHousing => 'ഭവന പദ്ധതി';

  @override
  String get catWomen => 'സ്ത്രീകൾ & കുട്ടികൾ';

  @override
  String get catSenior => 'പ്രായമായവർ';

  @override
  String get catBusiness => 'ബിസിനസ്സ് & MSME';

  @override
  String get catEmployment => 'തൊഴിൽ & വൈദഗ്ധ്യം';

  @override
  String get catEnergy => 'ഊർജ്ജം & സോളാർ';

  @override
  String get catSocialSecurity => 'പെൻഷൻ & ക്ഷേമം';

  @override
  String get catFood => 'റേഷൻ & ഭക്ഷണം';

  @override
  String get benefitsTitle => 'ആനുകൂല്യങ്ങൾ';

  @override
  String get eligibilityTitle => 'ആർക്ക് അപേക്ഷിക്കാം';

  @override
  String get documentsTitle => 'ആവശ്യമുള്ള രേഖകൾ';

  @override
  String get applyCta => 'ഔദ്യോഗിക പോർട്ടലിൽ അപേക്ഷിക്കുക';

  @override
  String get sourcePortal => 'ഔദ്യോഗിക വിവര സ്രോതസ്സ്';

  @override
  String lastVerified(String date) {
    return '$date ന് വിവരങ്ങൾ പരിശോധിച്ചു';
  }

  @override
  String get extraRulesTitle => 'മറ്റ് നിബന്ധനകൾ';

  @override
  String get disclaimerCard =>
      'ഇത് സർക്കാർ ആപ്പ് അല്ല. വിവരങ്ങൾ ഔദ്യോഗിക പോർട്ടലുകളിൽ നിന്ന് (myScheme, സംസ്ഥാന പോർട്ടലുകൾ) ശേഖരിച്ചതാണ്. അപേക്ഷിക്കും മുൻപ് ഔദ്യോഗിക വെബ്സൈറ്റിൽ സ്ഥിരീകരിക്കുക.';

  @override
  String get notGovtApp =>
      'സ്വതന്ത്ര ഹെൽപ്പർ ആപ്പ് — ഒരു സർക്കാർ സ്ഥാപനവുമായും ബന്ധമില്ല.';

  @override
  String get dataNote =>
      'പൂർണ്ണമായും ഓഫ്‌ലൈനിൽ പ്രവർത്തിക്കുന്നു. നിങ്ങളുടെ ഉത്തരങ്ങൾ ഫോനിൽ നിന്ന് പുറത്തുപോകുന്നില്ല.';

  @override
  String get privacyTitle => 'സ്വകാര്യത';

  @override
  String get privacyBody =>
      'ഈ ആപ്പിൽ ലോഗിനോ സെർവറോ ഇല്ല. ഉത്തരങ്ങൾ നിങ്ങളുടെ ഉപകരണത്തിൽ മാത്രം.';

  @override
  String get languageTitle => 'ആപ്പ് ഭാഷ';

  @override
  String get shareAppTitle => 'ഈ ആപ്പ് പങ്കിടുക';

  @override
  String get aboutVersion => 'ഡാറ്റ പാക്ക് പതിപ്പ്';

  @override
  String get errorGeneric => 'എന്തോ പ്രശ്നം സംഭവിച്ചു. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get popularSchemes => 'ഇപ്പോൾ ജനപ്രിയം';

  @override
  String schemeCount(int n) {
    return '$n പദ്ധതികൾ';
  }

  @override
  String get applyWarning =>
      '.gov.in / ഔദ്യോഗിക സൈറ്റുകളിൽ മാത്രം അപേക്ഷിക്കുക. ഏജന്റുമാർക്ക് പണം നൽകരുത്.';

  @override
  String get savedAnswers => 'ഉത്തരങ്ങൾ ഈ ഉപകരണത്തിൽ സൂക്ഷിച്ചിരിക്കുന്നു';

  @override
  String get noGuarantee =>
      'യോഗ്യതാ നിബന്ധനകൾ പാലിച്ചാലും അംഗീകാരമോ ആനുകൂല്യമോ ഉറപ്പില്ല. അന്തിമ തീരുമാനം ബന്ധപ്പെട്ട സർക്കാർ വകുപ്പിനാണ്.';

  @override
  String get relatedTitle => 'അനുബന്ധ പദ്ധതികൾ';
}
