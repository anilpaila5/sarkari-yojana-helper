// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'சர்காரி யோஜனா ஹெல்பர்';

  @override
  String get tagline => 'அரசு திட்டங்கள், எளிய மொழியில்';

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navBrowse => 'உலாவு';

  @override
  String get navSearch => 'தேடு';

  @override
  String get navSettings => 'அமைப்புகள்';

  @override
  String get findSchemesCta => 'எனக்கான திட்டங்களைக் கண்டறியுங்கள்';

  @override
  String get quizSubtitle =>
      '6 எளிய கேள்விகளுக்கு பதிலளிக்கவும். பதிவு தேவையில்லை. தகவல் உங்கள் ஃபோனை விட்டு வெளியேறாது.';

  @override
  String get startQuiz => 'தொடங்கு';

  @override
  String get retakeQuiz => 'பதில்களை மாற்று';

  @override
  String get yourMatches => 'உங்களுக்கான திட்டங்கள்';

  @override
  String matchesCount(int n) {
    return '$n திட்டங்கள் கிடைத்தன';
  }

  @override
  String stepOf(int current, int total) {
    return 'கேள்வி $current / $total';
  }

  @override
  String get qState => 'நீங்கள் எந்த மாநிலத்தில் வசிக்கிறீர்கள்?';

  @override
  String get qAge => 'உங்கள் வயது என்ன?';

  @override
  String get qGender => 'உங்கள் பாலினம்';

  @override
  String get qCategory => 'சமூக வகை';

  @override
  String get qIncome => 'குடும்ப ஆண்டு வருமானம்';

  @override
  String get qOccupation => 'நீங்கள் என்ன வேலை செய்கிறீர்கள்?';

  @override
  String get qArea => 'நீங்கள் எங்கு வசிக்கிறீர்கள்?';

  @override
  String get selectState => 'உங்கள் மாநிலத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get skipOptional => 'தவிர்க்கவும்';

  @override
  String get genderMale => 'ஆண்';

  @override
  String get genderFemale => 'பெண்';

  @override
  String get genderOther => 'மற்றவை';

  @override
  String get preferNotSay => 'கூற விரும்பவில்லை';

  @override
  String get catGeneral => 'பொது';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'சிறுபான்மை';

  @override
  String get occFarmer => 'விவசாயி';

  @override
  String get occStudent => 'மாணவர்';

  @override
  String get occSelfEmployed => 'சொந்த தொழில்';

  @override
  String get occSalaried => 'ஊதிய வேலை';

  @override
  String get occUnemployed => 'வேலையில்லாதவர் / வேலை தேடுபவர்';

  @override
  String get occHomemaker => 'இல்லத்தரசி';

  @override
  String get occRetired => 'மூத்த குடிமகன் / ஓய்வுபெற்றவர்';

  @override
  String get areaRural => 'கிராமம் / ஊரகம்';

  @override
  String get areaUrban => 'நகரம் / மாநகரம்';

  @override
  String get incomeBelow1L => '₹1 லட்சத்திற்கு குறைவு';

  @override
  String get income1to25 => '₹1–2.5 லட்சம்';

  @override
  String get income25to5 => '₹2.5–5 லட்சம்';

  @override
  String get income5to8 => '₹5–8 லட்சம்';

  @override
  String get incomeAbove8 => '₹8 லட்சத்திற்கு மேல்';

  @override
  String get next => 'அடுத்து';

  @override
  String get back => 'பின்';

  @override
  String get seeResults => 'என் திட்டங்களைக் காட்டு';

  @override
  String get eligibleBadge => 'தகுதி உள்ளது';

  @override
  String get maybeBadge => 'தகுதி இருக்கலாம்';

  @override
  String get resultsEmpty => 'பொருத்தமான திட்டம் இல்லை';

  @override
  String get resultsEmptyHint =>
      '\'உலாவு\' பகுதியில் வகை அல்லது மாநிலம் வாரியாக அனைத்து திட்டங்களையும் பாருங்கள்.';

  @override
  String get searchHint =>
      'திட்டத்தைத் தேடுங்கள், எ.கா. PM கிசான், உதவித்தொகை…';

  @override
  String get searchNoResults => 'எதுவும் கிடைக்கவில்லை';

  @override
  String get searchNoResultsHint =>
      'சிறிய சொற்களை முயற்சிக்கவும்: \'கிசான்\', \'ஓய்வூதியம்\', \'கடன்\'.';

  @override
  String get browseCategories => 'வகை வாரியாக';

  @override
  String get browseStates => 'மாநிலம் வாரியாக';

  @override
  String get centralAllIndia => 'மத்திய (அனைத்து இந்தியா)';

  @override
  String stateSchemesOf(String state) {
    return '$state திட்டங்கள்';
  }

  @override
  String get catAgriculture => 'விவசாயம் & விவசாயிகள்';

  @override
  String get catEducation => 'கல்வி & உதவித்தொகை';

  @override
  String get catHealth => 'சுகாதாரம் & காப்பீடு';

  @override
  String get catHousing => 'வீட்டுவசதி';

  @override
  String get catWomen => 'பெண்கள் & குழந்தைகள்';

  @override
  String get catSenior => 'மூத்த குடிமக்கள்';

  @override
  String get catBusiness => 'வணிகம் & MSME';

  @override
  String get catEmployment => 'வேலைவாய்ப்பு & திறன்';

  @override
  String get catEnergy => 'ஆற்றல் & சோலார்';

  @override
  String get catSocialSecurity => 'ஓய்வூதியம் & நலத்திட்டம்';

  @override
  String get catFood => 'ரேஷன் & உணவு';

  @override
  String get benefitsTitle => 'நன்மைகள்';

  @override
  String get eligibilityTitle => 'யார் விண்ணப்பிக்கலாம்';

  @override
  String get documentsTitle => 'தேவையான ஆவணங்கள்';

  @override
  String get applyCta => 'அதிகாரப்பூர்வ தளத்தில் விண்ணப்பிக்கவும்';

  @override
  String get sourcePortal => 'அதிகாரப்பூர்வ தகவல் ஆதாரம்';

  @override
  String lastVerified(String date) {
    return '$date அன்று தகவல் சரிபார்க்கப்பட்டது';
  }

  @override
  String get extraRulesTitle => 'பிற நிபந்தனைகள்';

  @override
  String get disclaimerCard =>
      'இது அரசு ஆப் அல்ல. தகவல் அதிகாரப்பூர்வ தளங்களிலிருந்து (myScheme, மாநில தளங்கள்) தொகுக்கப்பட்டது. விண்ணப்பிக்கும் முன் அதிகாரப்பூர்வ இணையதளத்தில் உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get notGovtApp =>
      'சுயாதீன உதவி ஆப் — எந்த அரசு அமைப்புடனும் தொடர்பில்லை.';

  @override
  String get dataNote =>
      'முழுவதும் ஆஃப்லைனில் இயங்கும். உங்கள் பதில்கள் ஃபோனை விட்டு வெளியேறாது.';

  @override
  String get privacyTitle => 'தனியுரிமை';

  @override
  String get privacyBody =>
      'இந்த ஆப்பில் உள்நுழைவு அல்லது சர்வர் இல்லை. பதில்கள் உங்கள் சாதனத்தில் மட்டுமே இருக்கும்.';

  @override
  String get languageTitle => 'ஆப் மொழி';

  @override
  String get shareAppTitle => 'இந்த ஆப்பைப் பங்கிடுங்கள்';

  @override
  String get aboutVersion => 'டேட்டா பேக் பதிப்பு';

  @override
  String get errorGeneric => 'ஏதோ தவறு ஏற்பட்டது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get retry => 'மீண்டும் முயற்சி';

  @override
  String get popularSchemes => 'தற்போது பிரபலம்';

  @override
  String schemeCount(int n) {
    return '$n திட்டங்கள்';
  }

  @override
  String get applyWarning =>
      '.gov.in / அதிகாரப்பூர்வ தளங்களில் மட்டும் விண்ணப்பிக்கவும். ஏஜெண்டுகளுக்கு பணம் கொடுக்க வேண்டாம்.';

  @override
  String get savedAnswers => 'பதில்கள் இந்த சாதனத்தில் சேமிக்கப்பட்டுள்ளன';

  @override
  String get noGuarantee =>
      'தகுதி நிபந்தனைகள் பூர்த்தியானாலும் ஒப்புதல் அல்லது பயன் கிடைக்கும் என்ற உத்தரவாதம் இல்லை. இறுதி முடிவு தொடர்புடைய அரசுத் துறையினுடையது.';

  @override
  String get relatedTitle => 'தொடர்புடைய திட்டங்கள்';
}
