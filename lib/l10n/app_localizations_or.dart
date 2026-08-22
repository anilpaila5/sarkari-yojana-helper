// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'ସରକାରୀ ଯୋଜନା ହେଲ୍ପର';

  @override
  String get tagline => 'ସରକାରୀ ଯୋଜନା, ସହଜ ଭାଷାରେ';

  @override
  String get navHome => 'ହୋମ';

  @override
  String get navBrowse => 'ବ୍ରାଉଜ୍';

  @override
  String get navSearch => 'ଖୋଜ';

  @override
  String get navSettings => 'ସେଟିଂ';

  @override
  String get findSchemesCta => 'ମୋ ପାଇଁ ଯୋଜନା ଖୋଜନ୍ତୁ';

  @override
  String get quizSubtitle =>
      '6ଟି ସହଜ ପ୍ରଶ୍ନର ଉତ୍ତର ଦିଅନ୍ତୁ। ନା ସାଇନ-ଅପ, ନା ତଥ୍ୟ ଫୋନ ବାହାରକୁ ଯାଏ।';

  @override
  String get startQuiz => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get retakeQuiz => 'ଉତ୍ତର ବଦଳାନ୍ତୁ';

  @override
  String get yourMatches => 'ଆପଣଙ୍କ ପାଇଁ ଯୋଜନା';

  @override
  String matchesCount(int n) {
    return '$nଟି ଯୋଜନା ମିଳିଲା';
  }

  @override
  String stepOf(int current, int total) {
    return 'ପ୍ରଶ୍ନ $current / $total';
  }

  @override
  String get qState => 'ଆପଣ କେଉଁ ରାଜ୍ୟରେ ରହୁଛନ୍ତି?';

  @override
  String get qAge => 'ଆପଣଙ୍କ ବୟସ କେତେ?';

  @override
  String get qGender => 'ଆପଣଙ୍କ ଲିଂଗ';

  @override
  String get qCategory => 'ସାମାଜିକ ଶ୍ରେଣୀ';

  @override
  String get qIncome => 'ପରିବାରର ବାର୍ଷିକ ଆୟ';

  @override
  String get qOccupation => 'ଆପଣ କଣ କାମ କରନ୍ତି?';

  @override
  String get qArea => 'ଆପଣ କେଉଁଠି ରହୁଛନ୍ତି?';

  @override
  String get selectState => 'ନିଜ ରାଜ୍ୟ ବାଛନ୍ତୁ';

  @override
  String get skipOptional => 'ଛାଡ଼ନ୍ତୁ';

  @override
  String get genderMale => 'ପୁରୁଷ';

  @override
  String get genderFemale => 'ମହିଳା';

  @override
  String get genderOther => 'ଅନ୍ୟ';

  @override
  String get preferNotSay => 'କହିବାକୁ ଚାହୁଁନାହିଁ';

  @override
  String get catGeneral => 'ସାଧାରଣ';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'ସଂଖ୍ୟାଲଘୁ';

  @override
  String get occFarmer => 'କୃଷକ';

  @override
  String get occStudent => 'ଛାତ୍ର/ଛାତ୍ରୀ';

  @override
  String get occSelfEmployed => 'ନିଜର ବ୍ୟବସାୟ';

  @override
  String get occSalaried => 'ଚାକିରି (ଦରମା)';

  @override
  String get occUnemployed => 'ବେକାର / ଚାକିରି ଖୋଜୁଥିବା';

  @override
  String get occHomemaker => 'ଗୃହିଣୀ';

  @override
  String get occRetired => 'ବୟସ୍କ ନାଗରିକ / ଅବସରପ୍ରାପ୍ତ';

  @override
  String get areaRural => 'ଗାଁ / ଗ୍ରାମାଞ୍ଚଳ';

  @override
  String get areaUrban => 'ସହର / ନଗର';

  @override
  String get incomeBelow1L => '₹1 ଲକ୍ଷରୁ କମ୍';

  @override
  String get income1to25 => '₹1–2.5 ଲକ୍ଷ';

  @override
  String get income25to5 => '₹2.5–5 ଲକ୍ଷ';

  @override
  String get income5to8 => '₹5–8 ଲକ୍ଷ';

  @override
  String get incomeAbove8 => '₹8 ଲକ୍ଷରୁ ଅଧିକ';

  @override
  String get next => 'ଆଗକୁ';

  @override
  String get back => 'ପଛକୁ';

  @override
  String get seeResults => 'ମୋ ଯୋଜନା ଦେଖାଅ';

  @override
  String get eligibleBadge => 'ଯୋଗ୍ୟ ହୋଇପାରନ୍ତି';

  @override
  String get maybeBadge => 'ବୋଧହୁଦ୍ ଯୋଗ୍ୟ';

  @override
  String get resultsEmpty => 'କୌଣସି ଯୋଜନା ମିଳିଲା ନାହିଁ';

  @override
  String get resultsEmptyHint =>
      '\'ବ୍ରାଉଜ୍\'ରେ ଶ୍ରେଣୀ ବା ରାଜ୍ୟ ଅନୁସାରେ ସବୁ ଯୋଜନା ଦେଖନ୍ତୁ.';

  @override
  String get searchHint => 'ଯୋଜନା ଖୋଜନ୍ତୁ, ଯଥା PM କିସାନ, ଛାତ୍ରବୃତ୍ତି…';

  @override
  String get searchNoResults => 'କିଛି ମିଳିଲା ନାହିଁ';

  @override
  String get searchNoResultsHint =>
      'ଛୋଟ ଶବ୍ଦ ଚେଷ୍ଟା କରନ୍ତୁ: \'କିସାନ\', \'ପେନ୍ସନ\', \'ଋଣ\'.';

  @override
  String get browseCategories => 'ଶ୍ରେଣୀ ଅନୁସାରେ';

  @override
  String get browseStates => 'ରାଜ୍ୟ ଅନୁସାରେ';

  @override
  String get centralAllIndia => 'କେନ୍ଦ୍ର (ସମଗ୍ର ଭାରତ)';

  @override
  String stateSchemesOf(String state) {
    return '$state ଯୋଜନା';
  }

  @override
  String get catAgriculture => 'କୃଷି ଓ କୃଷକ';

  @override
  String get catEducation => 'ଶିକ୍ଷା ଓ ଛାତ୍ରବୃତ୍ତି';

  @override
  String get catHealth => 'ସ୍ୱାସ୍ଥ୍ୟ ଓ ବୀମା';

  @override
  String get catHousing => 'ଘର';

  @override
  String get catWomen => 'ମହିଳା ଓ ଶିଶୁ';

  @override
  String get catSenior => 'ବୟସ୍କ ନାଗରିକ';

  @override
  String get catBusiness => 'ବ୍ୟବସାୟ ଓ MSME';

  @override
  String get catEmployment => 'ନିଯୁକ୍ତି ଓ ଦକ୍ଷତା';

  @override
  String get catEnergy => 'ଶକ୍ତି ଓ ସୋଲାର';

  @override
  String get catSocialSecurity => 'ପେନ୍ସନ ଓ ସାମାଜିକ ସୁରକ୍ଷା';

  @override
  String get catFood => 'ରାଶନ ଓ ଖାଦ୍ୟ';

  @override
  String get benefitsTitle => 'ସୁବିଧା';

  @override
  String get eligibilityTitle => 'କିଏ ଆବେଦନ କରିପାରିବେ';

  @override
  String get documentsTitle => 'ଆବଶ୍ୟକ ଦଲିଲ';

  @override
  String get applyCta => 'ସରକାରୀ ପୋର୍ଟାଲରେ ଆବେଦନ କରନ୍ତୁ';

  @override
  String get sourcePortal => 'ସରକାରୀ ସୂଚନା ସ୍ରୋତ';

  @override
  String lastVerified(String date) {
    return '$date ରେ ସୂଚନା ଯାଞ୍ଚ କରାଯାଇଛି';
  }

  @override
  String get extraRulesTitle => 'ଅନ୍ୟାନ୍ୟ ଶର୍ତ';

  @override
  String get disclaimerCard =>
      'ଏହା ସରକାରୀ ଆପ୍ ନୁହେଁ। ସୂଚନା ସରକାରୀ ପୋର୍ଟାଲ (myScheme, ରାଜ୍ୟ ପୋର୍ଟାଲ) ରୁ ସଂଗୃହୀତ। ଆବେଦନ ପୂର୍ବରୁ ସରକାରୀ ୱେବସାଇଟରେ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get notGovtApp =>
      'ସ୍ୱାଧୀନ ହେଲ୍ପର ଆପ୍ — କୌଣସି ସରକାରୀ ସଂସ୍ଥା ସହ ସଂଯୁକ୍ତ ନୁହେଁ।';

  @override
  String get dataNote =>
      'ସମ୍ପୂର୍ଣ୍ଣ ଅଫଲାଇନରେ ଚାଲେ। ଆପଣଙ୍କ ଉତ୍ତର ଫୋନ ବାହାରକୁ ଯାଏ ନାହିଁ।';

  @override
  String get privacyTitle => 'ଗୋପନୀୟତା';

  @override
  String get privacyBody =>
      'ଏହି ଆପ୍‌ରେ ନା ଲଗଇନ ନା ସର୍ଭର। ଉତ୍ତର କେବଳ ଆପଣଙ୍କ ଡିଭାଇସରେ ରହେ।';

  @override
  String get languageTitle => 'ଆପ୍ ଭାଷା';

  @override
  String get shareAppTitle => 'ଏହି ଆପ୍ ସେୟାର କରନ୍ତୁ';

  @override
  String get aboutVersion => 'ଡାଟା ପ୍ୟାକ ସଂସ୍କରଣ';

  @override
  String get errorGeneric => 'କିଛି ଭୁଲ ହେଲା। ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା';

  @override
  String get popularSchemes => 'ଏବେ ଲୋକପ୍ରିୟ';

  @override
  String schemeCount(int n) {
    return '$nଟି ଯୋଜନା';
  }

  @override
  String get applyWarning =>
      'କେବଳ .gov.in / ସରକାରୀ ସାଇଟରେ ଆବେଦନ କରନ୍ତୁ। ଏଜେଣ୍ଟଙ୍କୁ ପଇସା ଦିଅନ୍ତୁ ନାହିଁ।';

  @override
  String get savedAnswers => 'ଉତ୍ତର ଏହି ଡିଭାଇସରେ ସୁରକ୍ଷିତ';

  @override
  String get noGuarantee =>
      'ଯୋଗ୍ୟତା ମାନଦଣ୍ଡ ପୂରଣ ହେଲେ ମଧ୍ୟ ସ୍ୱୀକୃତି ବା ଲାଭର ଗ୍ୟାରେଣ୍ଟି ନାହିଁ। ଚୂଡ଼ାନ୍ତ ନିଷ୍ପତ୍ତି ସମ୍ବନ୍ଧିତ ସରକାରୀ ବିଭାଗର।';

  @override
  String get relatedTitle => 'ସମ୍ବନ୍ଧିତ ଯୋଜନା';
}
