// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'চৰকাৰী যোজনা হেল্পাৰ';

  @override
  String get tagline => 'চৰকাৰী আঁচনি, সহজ ভাষাত';

  @override
  String get navHome => 'ঘৰ';

  @override
  String get navBrowse => 'ব্ৰাউজ';

  @override
  String get navSearch => 'বিচাৰক';

  @override
  String get navSettings => 'ছেটিং';

  @override
  String get findSchemesCta => 'মোৰ বাবে আঁচনি বিচাৰক';

  @override
  String get quizSubtitle =>
      '৬টা সহজ প্ৰশ্নৰ উত্তৰ দিয়ক। ছাইন-আপৰ প্ৰয়োজন নাই। তথ্য ফ\'নৰ বাহিৰলৈ নাযায়।';

  @override
  String get startQuiz => 'আৰম্ভ কৰক';

  @override
  String get retakeQuiz => 'উত্তৰ সলনি কৰক';

  @override
  String get yourMatches => 'আপোনাৰ বাবে আঁচনি';

  @override
  String matchesCount(int n) {
    return '$nটা আঁচনি পোৱা গৈছে';
  }

  @override
  String stepOf(int current, int total) {
    return 'প্ৰশ্ন $current / $total';
  }

  @override
  String get qState => 'আপুনি কোনখন ৰাজ্যত থাকে?';

  @override
  String get qAge => 'আপোনাৰ বয়স কিমান?';

  @override
  String get qGender => 'আপোনাৰ লিংগ';

  @override
  String get qCategory => 'সামাজিক শ্ৰেণী';

  @override
  String get qIncome => 'পৰিয়ালৰ বাৰ্ষিক আয়';

  @override
  String get qOccupation => 'আপুনি কি কাম কৰে?';

  @override
  String get qArea => 'আপুনি ক\'ত থাকে?';

  @override
  String get selectState => 'নিজৰ ৰাজ্য বাছনি কৰক';

  @override
  String get skipOptional => 'এৰাই যাওক';

  @override
  String get genderMale => 'পুৰুষ';

  @override
  String get genderFemale => 'মহিলা';

  @override
  String get genderOther => 'অন্য';

  @override
  String get preferNotSay => 'ক\'বলৈ মন নাই';

  @override
  String get catGeneral => 'সাধাৰণ';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'সংখ্যালঘু';

  @override
  String get occFarmer => 'কৃষক';

  @override
  String get occStudent => 'ছাত্ৰ/ছাত্ৰী';

  @override
  String get occSelfEmployed => 'নিজৰ ব্যৱসায়';

  @override
  String get occSalaried => 'চাকৰি (দৰমহা)';

  @override
  String get occUnemployed => 'নিবনুৱা / চাকৰি বিচাৰি থকা';

  @override
  String get occHomemaker => 'গৃহিণী';

  @override
  String get occRetired => 'বৃদ্ধ নাগৰিক / অৱসৰপ্ৰাপ্ত';

  @override
  String get areaRural => 'গাঁও / গ্ৰাম্য';

  @override
  String get areaUrban => 'চহৰ / নগৰ';

  @override
  String get incomeBelow1L => '₹1 লক্ষতকৈ কম';

  @override
  String get income1to25 => '₹1–2.5 লক্ষ';

  @override
  String get income25to5 => '₹2.5–5 লক্ষ';

  @override
  String get income5to8 => '₹5–8 লক্ষ';

  @override
  String get incomeAbove8 => '₹8 লক্ষতকৈ অধিক';

  @override
  String get next => 'আগবাঢ়ক';

  @override
  String get back => 'ঘূৰি যাওক';

  @override
  String get seeResults => 'মোৰ আঁচনি দেখুৱাওক';

  @override
  String get eligibleBadge => 'অধিকাৰী হ\'ব পাৰে';

  @override
  String get maybeBadge => 'বোধকৰো অধিকাৰী';

  @override
  String get resultsEmpty => 'কোনো আঁচনি পোৱা নগৈছে';

  @override
  String get resultsEmptyHint =>
      '\'ব্ৰাউজ\'ত গৈ শ্ৰেণী বা ৰাজ্য অনুসৰি সকলো আঁচনি চাওক।';

  @override
  String get searchHint => 'আঁচনি বিচাৰক, যেনে PM কিষাণ, স্কলাৰশিপ…';

  @override
  String get searchNoResults => 'একো পোৱা নগৈছে';

  @override
  String get searchNoResultsHint =>
      'চুটি শব্দ ব্যৱহাৰ কৰক: \'কিষাণ\', \'পেনশ্বন\', \'ঋণ\'।';

  @override
  String get browseCategories => 'শ্ৰেণী অনুসৰি';

  @override
  String get browseStates => 'ৰাজ্য অনুসৰি';

  @override
  String get centralAllIndia => 'কেন্দ্ৰ (সমগ্ৰ ভাৰত)';

  @override
  String stateSchemesOf(String state) {
    return '$stateৰ আঁচনি';
  }

  @override
  String get catAgriculture => 'কৃষি আৰু কৃষক';

  @override
  String get catEducation => 'শিক্ষা আৰু স্কলাৰশিপ';

  @override
  String get catHealth => 'স্বাস্থ্য আৰু বীমা';

  @override
  String get catHousing => 'ঘৰ';

  @override
  String get catWomen => 'মহিলা আৰু শিশু';

  @override
  String get catSenior => 'বৃদ্ধ নাগৰিক';

  @override
  String get catBusiness => 'ব্যৱসায় আৰু MSME';

  @override
  String get catEmployment => 'নিযুক্তি আৰু দক্ষতা';

  @override
  String get catEnergy => 'শক্তি আৰু সৌৰ';

  @override
  String get catSocialSecurity => 'পেনশ্বন আৰু সমাজ সুৰক্ষা';

  @override
  String get catFood => 'ৰেচন আৰু খাদ্য';

  @override
  String get benefitsTitle => 'সুবিধা';

  @override
  String get eligibilityTitle => 'কোনে আবেদন কৰিব পাৰে';

  @override
  String get documentsTitle => 'প্ৰয়োজনীয় দলিল';

  @override
  String get applyCta => 'চৰকাৰী প\'ৰ্টেলত আবেদন কৰক';

  @override
  String get sourcePortal => 'চৰকাৰী তথ্যৰ উৎস';

  @override
  String lastVerified(String date) {
    return '$date ত তথ্য পৰীক্ষা কৰা হৈছে';
  }

  @override
  String get extraRulesTitle => 'অন্যান্য চৰ্তাৱলী';

  @override
  String get disclaimerCard =>
      'এইটো চৰকাৰী এপ নহয়। তথ্য চৰকাৰী প\'ৰ্টেল (myScheme, ৰাজ্যিক প\'ৰ্টেল)ৰ পৰা সংগৃহীত। আবেদনৰ আগত চৰকাৰী ৱেবছাইটত নিশ্চিত কৰক।';

  @override
  String get notGovtApp =>
      'স্বাধীন হেল্পাৰ এপ — কোনো চৰকাৰী সংস্থাৰ লগত জড়িত নহয়।';

  @override
  String get dataNote =>
      'সম্পূৰ্ণ অফলাইনত চলে। আপোনাৰ উত্তৰ ফ\'নৰ বাহিৰলৈ নাযায়।';

  @override
  String get privacyTitle => 'গোপনীয়তা';

  @override
  String get privacyBody =>
      'এই এপত নাই লগইন নাই ছাৰ্ভাৰ। উত্তৰবোৰ কেৱল আপোনাৰ ডিভাইচত থাকে।';

  @override
  String get languageTitle => 'এপৰ ভাষা';

  @override
  String get shareAppTitle => 'এই এপটো শ্বেয়াৰ কৰক';

  @override
  String get aboutVersion => 'ডাটা পেক সংস্কৰণ';

  @override
  String get errorGeneric => 'এটা সমস্যা হৈছে। আকৌ চেষ্টা কৰক।';

  @override
  String get retry => 'আকৌ চেষ্টা কৰক';

  @override
  String get popularSchemes => 'এতিয়া জনপ্ৰিয়';

  @override
  String schemeCount(int n) {
    return '$nটা আঁচনি';
  }

  @override
  String get applyWarning =>
      'কেৱল .gov.in / চৰকাৰী ছাইটতহে আবেদন কৰক। এজেণ্টক টকা নিদিব।';

  @override
  String get savedAnswers => 'উত্তৰবোৰ এই ডিভাইচত সংৰক্ষিত';

  @override
  String get noGuarantee =>
      'অধিকাৰৰ চৰ্তাৱলী পূৰণ হ\'লেও অনুমোদন বা সুবিধাৰ নিশ্চয়তা নাথাকে। চূড়ান্ত সিদ্ধান্ত সংশ্লিষ্ট চৰকাৰী বিভাগৰ।';

  @override
  String get relatedTitle => 'সম্পৰ্কিত যোজনা';
}
