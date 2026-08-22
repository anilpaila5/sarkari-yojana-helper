// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'सरकारी योजना हेल्पर';

  @override
  String get tagline => 'सरकारी योजना, सोप्या भाषेत';

  @override
  String get navHome => 'होम';

  @override
  String get navBrowse => 'ब्राउझ';

  @override
  String get navSearch => 'शोध';

  @override
  String get navSettings => 'सेटिंग्ज';

  @override
  String get findSchemesCta => 'माझ्यासाठी योजना शोधा';

  @override
  String get quizSubtitle =>
      '६ सोप्या प्रश्नांची उत्तरे द्या. ना नोंदणी, ना डेटा बाहेर जातो.';

  @override
  String get startQuiz => 'सुरू करा';

  @override
  String get retakeQuiz => 'उत्तरे बदला';

  @override
  String get yourMatches => 'तुमच्यासाठी योजना';

  @override
  String matchesCount(int n) {
    return '$n योजना सापडल्या';
  }

  @override
  String stepOf(int current, int total) {
    return 'प्रश्न $current / $total';
  }

  @override
  String get qState => 'तुम्ही कोणत्या राज्यात राहता?';

  @override
  String get qAge => 'तुमचे वय किती?';

  @override
  String get qGender => 'तुमचे लिंग';

  @override
  String get qCategory => 'सामाजिक प्रवर्ग';

  @override
  String get qIncome => 'कुटुंबाचे वार्षिक उत्पन्न';

  @override
  String get qOccupation => 'तुम्ही काम करता?';

  @override
  String get qArea => 'तुम्ही कुठे राहता?';

  @override
  String get selectState => 'तुमचे राज्य निवडा';

  @override
  String get skipOptional => 'वगळा';

  @override
  String get genderMale => 'पुरुष';

  @override
  String get genderFemale => 'स्त्री';

  @override
  String get genderOther => 'इतर';

  @override
  String get preferNotSay => 'सांगू इच्छित नाही';

  @override
  String get catGeneral => 'सामान्य';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'अल्पसंख्याक';

  @override
  String get occFarmer => 'शेतकरी';

  @override
  String get occStudent => 'विद्यार्थी';

  @override
  String get occSelfEmployed => 'स्वतःचा व्यवसाय';

  @override
  String get occSalaried => 'नोकरी (वेतनभोगी)';

  @override
  String get occUnemployed => 'बेरोजगार / नोकरी शोधत';

  @override
  String get occHomemaker => 'गृहिणी';

  @override
  String get occRetired => 'ज्येष्ठ नागरिक / निवृत्त';

  @override
  String get areaRural => 'गाव / ग्रामीण';

  @override
  String get areaUrban => 'शहर / नगर';

  @override
  String get incomeBelow1L => '₹१ लाखांपेक्षा कमी';

  @override
  String get income1to25 => '₹१–२.५ लाख';

  @override
  String get income25to5 => '₹२.५–५ लाख';

  @override
  String get income5to8 => '₹५–८ लाख';

  @override
  String get incomeAbove8 => '₹८ लाखांपेक्षा जास्त';

  @override
  String get next => 'पुढे';

  @override
  String get back => 'मागे';

  @override
  String get seeResults => 'माझ्या योजना पहा';

  @override
  String get eligibleBadge => 'पात्र असू शकता';

  @override
  String get maybeBadge => 'कदाचित पात्र';

  @override
  String get resultsEmpty => 'कोणती योजना सापडली नाही';

  @override
  String get resultsEmptyHint =>
      '\'ब्राउझ\' मध्ये जाऊन प्रवर्ग किंवा राज्यानुसार सर्व योजना पहा.';

  @override
  String get searchHint => 'योजना शोधा, उदा. PM किसान, शिष्यवृत्ती…';

  @override
  String get searchNoResults => 'काही सापडले नाही';

  @override
  String get searchNoResultsHint =>
      'लहान शब्द वापरा जसे \'किसान\', \'पेन्शन\', \'कर्ज\'.';

  @override
  String get browseCategories => 'प्रवर्गानुसार';

  @override
  String get browseStates => 'राज्यानुसार';

  @override
  String get centralAllIndia => 'केंद्र (संपूर्ण भारत)';

  @override
  String stateSchemesOf(String state) {
    return '$state योजना';
  }

  @override
  String get catAgriculture => 'शेती आणि शेतकरी';

  @override
  String get catEducation => 'शिक्षण आणि शिष्यवृत्ती';

  @override
  String get catHealth => 'आरोग्य आणि विमा';

  @override
  String get catHousing => 'घर';

  @override
  String get catWomen => 'महिला आणि बालके';

  @override
  String get catSenior => 'ज्येष्ठ नागरिक';

  @override
  String get catBusiness => 'व्यवसाय आणि MSME';

  @override
  String get catEmployment => 'रोजगार आणि कौशल्य';

  @override
  String get catEnergy => 'ऊर्जा आणि सोलार';

  @override
  String get catSocialSecurity => 'पेन्शन आणि समाज सुरक्षा';

  @override
  String get catFood => 'राशन आणि अन्न';

  @override
  String get benefitsTitle => 'लाभ';

  @override
  String get eligibilityTitle => 'कोण अर्ज करू शकतो';

  @override
  String get documentsTitle => 'आवश्यक कागदपत्रे';

  @override
  String get applyCta => 'सरकारी पोर्टलवर अर्ज करा';

  @override
  String get sourcePortal => 'अधिकृत माहिती स्रोत';

  @override
  String lastVerified(String date) {
    return '$date रोजी माहिती तपासली';
  }

  @override
  String get extraRulesTitle => 'इतर अटी';

  @override
  String get disclaimerCard =>
      'हे सरकारी अ‍ॅप नाही. माहिती अधिकृत पोर्टल (myScheme, राज्य पोर्टल) वरून संकलित. अर्ज करण्यापूर्वी अधिकृत संकेतस्थळावर तपासा.';

  @override
  String get notGovtApp =>
      'स्वतंत्र हेल्पर अ‍ॅप — कोणत्याही शासकीय संस्थेशी संलग्न नाही.';

  @override
  String get dataNote =>
      'संपूर्ण ऑफलाइन चालते. तुमची उत्तरे फोनबाहेर जात नाहीत.';

  @override
  String get privacyTitle => 'गोपनीयता';

  @override
  String get privacyBody =>
      'या अ‍ॅपमध्ये लॉगिन किंवा सर्व्हर नाही. उत्तरे फक्त तुमच्या डिव्हाइसवर राहतात.';

  @override
  String get languageTitle => 'अ‍ॅपची भाषा';

  @override
  String get shareAppTitle => 'हे अ‍ॅप शेअर करा';

  @override
  String get aboutVersion => 'डेटा पॅक आवृत्ती';

  @override
  String get errorGeneric => 'काहीतरी चूक झाली. पुन्हा प्रयत्न करा.';

  @override
  String get retry => 'पुन्हा प्रयत्न';

  @override
  String get popularSchemes => 'सध्या लोकप्रिय';

  @override
  String schemeCount(int n) {
    return '$n योजना';
  }

  @override
  String get applyWarning =>
      'फक्त .gov.in / अधिकृत साइटवरच अर्ज करा. एजंटला पैसे देऊ नका.';

  @override
  String get savedAnswers => 'उत्तरे या डिव्हाइसवर जतन केली आहेत';

  @override
  String get noGuarantee =>
      'पात्रता पूर्ण झाल्याने मंजुरीची वा लाभाची हमी नसते. अंतिम निर्णय संबंधित शासकीय विभागाचा असतो.';

  @override
  String get relatedTitle => 'संबंधित योजना';
}
