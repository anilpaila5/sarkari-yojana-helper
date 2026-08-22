// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'સરકારી યોજના હેલ્પર';

  @override
  String get tagline => 'સરકારી યોજનાઓ, સરળ ભાષામાં';

  @override
  String get navHome => 'હોમ';

  @override
  String get navBrowse => 'બ્રાઉઝ';

  @override
  String get navSearch => 'શોધ';

  @override
  String get navSettings => 'સેટિંગ્સ';

  @override
  String get findSchemesCta => 'મારા માટે યોજનાઓ શોધો';

  @override
  String get quizSubtitle =>
      '6 સરળ પ્રશ્નોના જવાબ આપો. ના સાઇન-અપ, ના ડેટા ફોન બહાર જાય.';

  @override
  String get startQuiz => 'શરૂ કરો';

  @override
  String get retakeQuiz => 'જવાબો બદલો';

  @override
  String get yourMatches => 'તમારા માટે યોજનાઓ';

  @override
  String matchesCount(int n) {
    return '$n યોજનાઓ મળી';
  }

  @override
  String stepOf(int current, int total) {
    return 'પ્રશ્ન $current / $total';
  }

  @override
  String get qState => 'તમે કયા રાજ્યમાં રહો છો?';

  @override
  String get qAge => 'તમારી ઉંમર કેટલી છે?';

  @override
  String get qGender => 'તમારું લિંગ';

  @override
  String get qCategory => 'સામાજિક વર્ગ';

  @override
  String get qIncome => 'પરિવારનું વાર્ષિક આવક';

  @override
  String get qOccupation => 'તમે શું કામ કરો છો?';

  @override
  String get qArea => 'તમે ક્યાં રહો છો?';

  @override
  String get selectState => 'તમારું રાજ્ય પસંદ કરો';

  @override
  String get skipOptional => 'છોડો';

  @override
  String get genderMale => 'પુરુષ';

  @override
  String get genderFemale => 'સ્ત્રી';

  @override
  String get genderOther => 'અન્ય';

  @override
  String get preferNotSay => 'કહેવું નથી ઇચ્છતા';

  @override
  String get catGeneral => 'સામાન્ય';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'અલ્પસંખ્યક';

  @override
  String get occFarmer => 'ખેડૂત';

  @override
  String get occStudent => 'વિદ્યાર્થી';

  @override
  String get occSelfEmployed => 'પોતાનો ધંધો';

  @override
  String get occSalaried => 'નોકરી (પગાર)';

  @override
  String get occUnemployed => 'બેરોજગાર / નોકરી શોધે';

  @override
  String get occHomemaker => 'ગૃહિણી';

  @override
  String get occRetired => 'વરિષ્ઠ નાગરિક / નિવૃત્ત';

  @override
  String get areaRural => 'ગામ / ગ્રામ્ય';

  @override
  String get areaUrban => 'શહેર / નગર';

  @override
  String get incomeBelow1L => '₹1 લાખથી ઓછી';

  @override
  String get income1to25 => '₹1–2.5 લાખ';

  @override
  String get income25to5 => '₹2.5–5 લાખ';

  @override
  String get income5to8 => '₹5–8 લાખ';

  @override
  String get incomeAbove8 => '₹8 લાખથી વધુ';

  @override
  String get next => 'આગળ';

  @override
  String get back => 'પાછળ';

  @override
  String get seeResults => 'મારી યોજનાઓ બતાવો';

  @override
  String get eligibleBadge => 'લાયક હોઈ શકો';

  @override
  String get maybeBadge => 'કદાચ લાયક';

  @override
  String get resultsEmpty => 'કોઈ યોજના મળી નથી';

  @override
  String get resultsEmptyHint =>
      '\'બ્રાઉઝ\'માં જઈને વર્ગ કે રાજ્ય પ્રમાણે બધી યોજનાઓ જુઓ.';

  @override
  String get searchHint => 'યોજના શોધો, જેમ કે PM કિસાન, સ્કોલરશિપ…';

  @override
  String get searchNoResults => 'કંઈ મળ્યું નથી';

  @override
  String get searchNoResultsHint =>
      'નાના શબ્દો અઝમાવો: \'કિસાન\', \'પેન્શન\', \'લોન\'.';

  @override
  String get browseCategories => 'વર્ગ પ્રમાણે';

  @override
  String get browseStates => 'રાજ્ય પ્રમાણે';

  @override
  String get centralAllIndia => 'કેન્દ્ર (આખું ભારત)';

  @override
  String stateSchemesOf(String state) {
    return '$state યોજનાઓ';
  }

  @override
  String get catAgriculture => 'ખેતી અને ખેડૂત';

  @override
  String get catEducation => 'શિક્ષણ અને સ્કોલરશિપ';

  @override
  String get catHealth => 'આરોગ્ય અને વીમો';

  @override
  String get catHousing => 'આવાસ';

  @override
  String get catWomen => 'મહિલા અને બાળકો';

  @override
  String get catSenior => 'વરિષ્ઠ નાગરિકો';

  @override
  String get catBusiness => 'ધંધો અને MSME';

  @override
  String get catEmployment => 'રોજગારી અને કૌશલ્ય';

  @override
  String get catEnergy => 'ઊર્જા અને સોલાર';

  @override
  String get catSocialSecurity => 'પેન્શન અને સામાજિક સુરક્ષા';

  @override
  String get catFood => 'રાશન અને અન્ન';

  @override
  String get benefitsTitle => 'લાભો';

  @override
  String get eligibilityTitle => 'કોણ અરજી કરી શકે';

  @override
  String get documentsTitle => 'જરૂરી દસ્તાવેજો';

  @override
  String get applyCta => 'સરકારી પોર્ટલ પર અરજી કરો';

  @override
  String get sourcePortal => 'સત્તાવાર માહિતી સ્રોત';

  @override
  String lastVerified(String date) {
    return '$date ના રોજ માહિતી ચકાસાઈ';
  }

  @override
  String get extraRulesTitle => 'અન્ય શરતો';

  @override
  String get disclaimerCard =>
      'આ સરકારી એપ નથી. માહિતી સત્તાવાર પોર્ટલ (myScheme, રાજ્ય પોર્ટલ) પરથી સંકલિત છે. અરજી પહેલાં સત્તાવાર વેબસાઇટ પર ખાતરી કરો.';

  @override
  String get notGovtApp =>
      'સ્વતંત્ર હેલ્પર એપ — કોઈ સરકારી સંસ્થા સાથે સંકળાયેલ નથી.';

  @override
  String get dataNote =>
      'સંપૂર્ણ ઑફલાઇન ચાલે છે. તમારા જવાબો ફોન બહાર જતા નથી.';

  @override
  String get privacyTitle => 'ગોપનીયતા';

  @override
  String get privacyBody =>
      'આ એપમાં ન લોગિન છે ના સર્વર. જવાબો ફક્ત તમારા ડિવાઇસમાં રહે છે.';

  @override
  String get languageTitle => 'એપની ભાષા';

  @override
  String get shareAppTitle => 'આ એપ શેર કરો';

  @override
  String get aboutVersion => 'ડેટા પેક વર્ઝન';

  @override
  String get errorGeneric => 'કંઈક ખોટું થયું. ફરી પ્રયાસ કરો.';

  @override
  String get retry => 'ફરી પ્રયાસ';

  @override
  String get popularSchemes => 'અત્યારે લોકપ્રિય';

  @override
  String schemeCount(int n) {
    return '$n યોજનાઓ';
  }

  @override
  String get applyWarning =>
      'ફક્ત .gov.in / સત્તાવાર સાઇટ પર જ અરજી કરો. એજન્ટને પૈસા ન આપો.';

  @override
  String get savedAnswers => 'જવાબો આ ડિવાઇસ પર સચવાયા છે';

  @override
  String get noGuarantee =>
      'લાયકાત પૂરી થવાથી મંજૂરી કે લાભ મળવાની બાંયધી નથી. છેલ્લો નિર્ણય સંબંધિત સરકારી વિભાગનો હોય છે.';

  @override
  String get relatedTitle => 'સંબંધિત યોજનાઓ';
}
