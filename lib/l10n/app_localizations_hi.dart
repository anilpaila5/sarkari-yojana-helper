// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'सरकारी योजना हेल्पर';

  @override
  String get tagline => 'सरकारी योजनाएँ, आसान भाषा में';

  @override
  String get navHome => 'होम';

  @override
  String get navBrowse => 'खोजें';

  @override
  String get navSearch => 'खोज';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get findSchemesCta => 'मेरे लिए योजनाएँ खोजें';

  @override
  String get quizSubtitle =>
      '6 आसान सवालों के जवाब दें। न रजिस्ट्रेशन, न डेटा कहीं जाता है।';

  @override
  String get startQuiz => 'शुरू करें';

  @override
  String get retakeQuiz => 'जवाब बदलें';

  @override
  String get yourMatches => 'आपके लिए योजनाएँ';

  @override
  String matchesCount(int n) {
    return '$n योजनाएँ मिलीं';
  }

  @override
  String stepOf(int current, int total) {
    return 'प्रश्न $current / $total';
  }

  @override
  String get qState => 'आप किस राज्य में रहते हैं?';

  @override
  String get qAge => 'आपकी उम्र क्या है?';

  @override
  String get qGender => 'आपका लिंग';

  @override
  String get qCategory => 'सामाजिक श्रेणी';

  @override
  String get qIncome => 'परिवार की सालाना आय';

  @override
  String get qOccupation => 'आप क्या काम करते हैं?';

  @override
  String get qArea => 'आप कहाँ रहते हैं?';

  @override
  String get selectState => 'अपना राज्य चुनें';

  @override
  String get skipOptional => 'छोड़ें';

  @override
  String get genderMale => 'पुरुष';

  @override
  String get genderFemale => 'महिला';

  @override
  String get genderOther => 'अन्य';

  @override
  String get preferNotSay => 'बताना नहीं चाहते';

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
  String get catMinority => 'अल्पसंख्यक';

  @override
  String get occFarmer => 'किसान';

  @override
  String get occStudent => 'छात्र/छात्रा';

  @override
  String get occSelfEmployed => 'अपना काम-धंधा';

  @override
  String get occSalaried => 'नौकरी (वेतनभोगी)';

  @override
  String get occUnemployed => 'बेरोज़गार / नौकरी की तलाश';

  @override
  String get occHomemaker => 'गृहिणी';

  @override
  String get occRetired => 'वरिष्ठ नागरिक / सेवानिवृत्त';

  @override
  String get areaRural => 'गाँव / ग्रामीण';

  @override
  String get areaUrban => 'शहर / नगर';

  @override
  String get incomeBelow1L => '₹1 लाख से कम';

  @override
  String get income1to25 => '₹1–2.5 लाख';

  @override
  String get income25to5 => '₹2.5–5 लाख';

  @override
  String get income5to8 => '₹5–8 लाख';

  @override
  String get incomeAbove8 => '₹8 लाख से अधिक';

  @override
  String get next => 'आगे';

  @override
  String get back => 'पीछे';

  @override
  String get seeResults => 'मेरी योजनाएँ दिखाएँ';

  @override
  String get eligibleBadge => 'पात्र हो सकते हैं';

  @override
  String get maybeBadge => 'शायद पात्र';

  @override
  String get resultsEmpty => 'कोई सीधी योजना नहीं मिली';

  @override
  String get resultsEmptyHint =>
      '\'खोजें\' सेक्शन में जाकर श्रेणी या राज्य के हिसाब से सारी योजनाएँ देखें।';

  @override
  String get searchHint => 'योजना खोजें, जैसे PM किसान, छात्रवृत्ति…';

  @override
  String get searchNoResults => 'कुछ नहीं मिला';

  @override
  String get searchNoResultsHint =>
      'छोटे शब्द आज़माएँ जैसे \'किसान\', \'पेंशन\', \'लोन\'।';

  @override
  String get browseCategories => 'श्रेणी से';

  @override
  String get browseStates => 'राज्य से';

  @override
  String get centralAllIndia => 'केंद्र (पूरे भारत)';

  @override
  String stateSchemesOf(String state) {
    return '$state की योजनाएँ';
  }

  @override
  String get catAgriculture => 'कृषि और किसान';

  @override
  String get catEducation => 'शिक्षा और छात्रवृत्ति';

  @override
  String get catHealth => 'स्वास्थ्य और बीमा';

  @override
  String get catHousing => 'आवास';

  @override
  String get catWomen => 'महिला और बाल विकास';

  @override
  String get catSenior => 'वरिष्ठ नागरिक';

  @override
  String get catBusiness => 'व्यापार और MSME';

  @override
  String get catEmployment => 'रोज़गार और स्किल';

  @override
  String get catEnergy => 'ऊर्जा और सोलर';

  @override
  String get catSocialSecurity => 'पेंशन और सामाजिक सुरक्षा';

  @override
  String get catFood => 'राशन और खाद्य';

  @override
  String get benefitsTitle => 'लाभ';

  @override
  String get eligibilityTitle => 'कौन आवेदन कर सकता है';

  @override
  String get documentsTitle => 'ज़रूरी दस्तावेज़';

  @override
  String get applyCta => 'सरकारी पोर्टल पर आवेदन करें';

  @override
  String get sourcePortal => 'आधिकारिक जानकारी स्रोत';

  @override
  String lastVerified(String date) {
    return 'जानकारी $date को जाँची गई';
  }

  @override
  String get extraRulesTitle => 'अन्य शर्तें';

  @override
  String get disclaimerCard =>
      'यह सरकारी ऐप नहीं है। जानकारी आधिकारिक सार्वजनिक पोर्टल (myScheme, राज्य पोर्टल) से संकलित है। आवेदन से पहले आधिकारिक वेबसाइट पर पुष्टि अवश्य करें।';

  @override
  String get notGovtApp =>
      'स्वतंत्र हेल्पर ऐप — किसी सरकारी संस्था से संबद्ध नहीं।';

  @override
  String get dataNote =>
      'पूरी तरह ऑफ़लाइन चलता है। आपके जवाब फ़ोन से बाहर नहीं जाते।';

  @override
  String get privacyTitle => 'गोपनीयता';

  @override
  String get privacyBody =>
      'इस ऐप में न लॉगिन है, न सर्वर। आपके जवाब सिर्फ़ आपके डिवाइस में रहते हैं।';

  @override
  String get languageTitle => 'ऐप की भाषा';

  @override
  String get shareAppTitle => 'यह ऐप शेयर करें';

  @override
  String get aboutVersion => 'डेटा पैक संस्करण';

  @override
  String get errorGeneric => 'कुछ गड़बड़ हुई। फिर से कोशिश करें।';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get popularSchemes => 'इस समय लोकप्रिय';

  @override
  String schemeCount(int n) {
    return '$n योजनाएँ';
  }

  @override
  String get applyWarning =>
      'आवेदन सिर्फ़ .gov.in / आधिकारिक साइट पर करें। एजेंट को पैसे न दें।';

  @override
  String get savedAnswers => 'जवाब इसी डिवाइस पर सुरक्षित हैं';

  @override
  String get noGuarantee =>
      'पात्रता पूरी होना स्वीकृति या लाभ की गारंटी नहीं है। अंतिम निर्णय संबंधित सरकारी विभाग का होता है।';

  @override
  String get relatedTitle => 'संबंधित योजनाएँ';
}
