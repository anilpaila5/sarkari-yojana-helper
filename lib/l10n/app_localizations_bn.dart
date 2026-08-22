// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'সরকারি যোজনা হেল্পার';

  @override
  String get tagline => 'সরকারি প্রকল্প, সহজ ভাষায়';

  @override
  String get navHome => 'হোম';

  @override
  String get navBrowse => 'ব্রাউজ';

  @override
  String get navSearch => 'খোঁজ';

  @override
  String get navSettings => 'সেটিংস';

  @override
  String get findSchemesCta => 'আমার জন্য প্রকল্প খুঁজুন';

  @override
  String get quizSubtitle =>
      '৬টি সহজ প্রশ্নের উত্তর দিন। না সাইন-আপ, না তথ্য ফোনের বাইরে যায়।';

  @override
  String get startQuiz => 'শুরু করুন';

  @override
  String get retakeQuiz => 'উত্তর বদলান';

  @override
  String get yourMatches => 'আপনার জন্য প্রকল্প';

  @override
  String matchesCount(int n) {
    return '$nটি প্রকল্প পাওয়া গেছে';
  }

  @override
  String stepOf(int current, int total) {
    return 'প্রশ্ন $current / $total';
  }

  @override
  String get qState => 'আপনি কোন রাজ্যে থাকেন?';

  @override
  String get qAge => 'আপনার বয়স কত?';

  @override
  String get qGender => 'আপনার লিঙ্গ';

  @override
  String get qCategory => 'সামাজিক শ্রেণি';

  @override
  String get qIncome => 'পরিবারের বার্ষিক আয়';

  @override
  String get qOccupation => 'আপনি কী কাজ করেন?';

  @override
  String get qArea => 'আপনি কোথায় থাকেন?';

  @override
  String get selectState => 'আপনার রাজ্য বাছুন';

  @override
  String get skipOptional => 'এড়িয়ে যান';

  @override
  String get genderMale => 'পুরুষ';

  @override
  String get genderFemale => 'মহিলা';

  @override
  String get genderOther => 'অন্য';

  @override
  String get preferNotSay => 'বলতে চাই না';

  @override
  String get catGeneral => 'সাধারণ';

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
  String get occStudent => 'ছাত্র/ছাত্রী';

  @override
  String get occSelfEmployed => 'নিজের ব্যবসা';

  @override
  String get occSalaried => 'চাকরিজীবী';

  @override
  String get occUnemployed => 'বেকার / চাকরির খোঁজ';

  @override
  String get occHomemaker => 'গৃহিণী';

  @override
  String get occRetired => 'প্রবীণ নাগরিক / অবসরপ্রাপ্ত';

  @override
  String get areaRural => 'গ্রাম';

  @override
  String get areaUrban => 'শহর';

  @override
  String get incomeBelow1L => '১ লক্ষ ₹-এর নিচে';

  @override
  String get income1to25 => '₹১–২.৫ লক্ষ';

  @override
  String get income25to5 => '₹২.৫–৫ লক্ষ';

  @override
  String get income5to8 => '₹৫–৮ লক্ষ';

  @override
  String get incomeAbove8 => '₹৮ লক্ষের বেশি';

  @override
  String get next => 'পরবর্তী';

  @override
  String get back => 'পূর্ববর্তী';

  @override
  String get seeResults => 'আমার প্রকল্প দেখুন';

  @override
  String get eligibleBadge => 'যোগ্য হতে পারেন';

  @override
  String get maybeBadge => 'সম্ভবত যোগ্য';

  @override
  String get resultsEmpty => 'কোনো মিল পাওয়া যায়নি';

  @override
  String get resultsEmptyHint =>
      '\'ব্রাউজ\' সেকশনে গিয়ে শ্রেণি বা রাজ্য অনুযায়ী সব প্রকল্প দেখুন।';

  @override
  String get searchHint => 'প্রকল্প খুঁজুন, যেমন কিসান, স্কলারশিপ…';

  @override
  String get searchNoResults => 'কিছু পাওয়া যায়নি';

  @override
  String get searchNoResultsHint =>
      'ছোট শব্দ লিখুন যেমন \'কিসান\', \'পেনশন\', \'ঋণ\'।';

  @override
  String get browseCategories => 'শ্রেণি অনুযায়ী';

  @override
  String get browseStates => 'রাজ্য অনুযায়ী';

  @override
  String get centralAllIndia => 'কেন্দ্র (সারা ভারত)';

  @override
  String stateSchemesOf(String state) {
    return '$state-এর প্রকল্প';
  }

  @override
  String get catAgriculture => 'কৃষি ও কৃষক';

  @override
  String get catEducation => 'শিক্ষা ও স্কলারশিপ';

  @override
  String get catHealth => 'স্বাস্থ্য ও বীমা';

  @override
  String get catHousing => 'আবাসন';

  @override
  String get catWomen => 'নারী ও শিশু';

  @override
  String get catSenior => 'প্রবীণ নাগরিক';

  @override
  String get catBusiness => 'ব্যবসা ও MSME';

  @override
  String get catEmployment => 'কর্মসংস্থান ও দক্ষতা';

  @override
  String get catEnergy => 'শক্তি ও সোলার';

  @override
  String get catSocialSecurity => 'পেনশন ও সমাজকল্যাণ';

  @override
  String get catFood => 'রাশন ও খাদ্য';

  @override
  String get benefitsTitle => 'সুবিধা';

  @override
  String get eligibilityTitle => 'কারা আবেদন করতে পারেন';

  @override
  String get documentsTitle => 'প্রয়োজনীয় নথি';

  @override
  String get applyCta => 'সরকারি পোর্টালে আবেদন করুন';

  @override
  String get sourcePortal => 'সরকারি তথ্যসূত্র';

  @override
  String lastVerified(String date) {
    return '$date তারিখে তথ্য যাচাই করা হয়েছে';
  }

  @override
  String get extraRulesTitle => 'অন্যান্য শর্ত';

  @override
  String get disclaimerCard =>
      'এটি সরকারি অ্যাপ নয়। তথ্য সরকারি পোর্টাল (myScheme, রাজ্য পোর্টাল) থেকে সংগৃহীত। আবেদনের আগে অফিসিয়াল ওয়েবসাইটে যাচাই করুন।';

  @override
  String get notGovtApp =>
      'স্বাধীন হেল্পার অ্যাপ — কোনো সরকারি সংস্থার সঙ্গে যুক্ত নয়।';

  @override
  String get dataNote =>
      'সম্পূর্ণ অফলাইনে চলে। আপনার উত্তর ফোনের বাইরে যায় না।';

  @override
  String get privacyTitle => 'গোপনীয়তা';

  @override
  String get privacyBody =>
      'এই অ্যাপে লগইন বা সার্ভার নেই। উত্তর শুধু আপনার ডিভাইসে থাকে।';

  @override
  String get languageTitle => 'অ্যাপের ভাষা';

  @override
  String get shareAppTitle => 'অ্যাপটি শেয়ার করুন';

  @override
  String get aboutVersion => 'ডেটা প্যাক সংস্করণ';

  @override
  String get errorGeneric => 'কিছু সমস্যা হয়েছে। আবার চেষ্টা করুন।';

  @override
  String get retry => 'আবার চেষ্টা';

  @override
  String get popularSchemes => 'এখন জনপ্রিয়';

  @override
  String schemeCount(int n) {
    return '$nটি প্রকল্প';
  }

  @override
  String get applyWarning =>
      'শুধু .gov.in / অফিসিয়াল সাইটে আবেদন করুন। এজেন্টকে টাকা দেবেন না।';

  @override
  String get savedAnswers => 'উত্তর এই ডিভাইসে সংরক্ষিত';

  @override
  String get noGuarantee =>
      'যোগ্যতা পূরণ করলেই অনুমোদন বা সুবিধা পাওয়ার নিশ্চয়তা নেই। চূড়ান্ত সিদ্ধান্ত সংশ্লিষ্ট সরকারি বিভাগের।';

  @override
  String get relatedTitle => 'সম্পর্কিত প্রকল্প';
}
