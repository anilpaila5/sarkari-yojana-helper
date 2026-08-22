// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'సర్కారీ యోజన హెల్పర్';

  @override
  String get tagline => 'ప్రభుత్వ పథకాలు, సులభమైన భాషలో';

  @override
  String get navHome => 'హోమ్';

  @override
  String get navBrowse => 'బ్రౌజ్';

  @override
  String get navSearch => 'వెతుకు';

  @override
  String get navSettings => 'సెట్టింగ్‌లు';

  @override
  String get findSchemesCta => 'నా కోసం పథకాలు కనుగొనండి';

  @override
  String get quizSubtitle =>
      '6 సులభమైన ప్రశ్నలకు సమాధానం ఇవ్వండి. సైన్-అప్ అవసరం లేదు. డేటా ఫోన్ బయటకు వెళ్ళదు.';

  @override
  String get startQuiz => 'ప్రారంభించండి';

  @override
  String get retakeQuiz => 'సమాధానాలు మార్చండి';

  @override
  String get yourMatches => 'మీ కోసం పథకాలు';

  @override
  String matchesCount(int n) {
    return '$n పథకాలు దొరికాయి';
  }

  @override
  String stepOf(int current, int total) {
    return 'ప్రశ్న $current / $total';
  }

  @override
  String get qState => 'మీరు ఏ రాష్ట్రంలో నివసిస్తున్నారు?';

  @override
  String get qAge => 'మీ వయస్సు ఎంత?';

  @override
  String get qGender => 'మీ లింగం';

  @override
  String get qCategory => 'సామాజిక వర్గం';

  @override
  String get qIncome => 'కుటుంబ వార్షిక ఆదాయం';

  @override
  String get qOccupation => 'మీరు ఏమి పని చేస్తారు?';

  @override
  String get qArea => 'మీరు ఎక్కడ ఉంటారు?';

  @override
  String get selectState => 'మీ రాష్ట్రాన్ని ఎంచుకోండి';

  @override
  String get skipOptional => 'దాటవేయి';

  @override
  String get genderMale => 'పురుషుడు';

  @override
  String get genderFemale => 'స్త్రీ';

  @override
  String get genderOther => 'ఇతర';

  @override
  String get preferNotSay => 'చెప్పనకోరను';

  @override
  String get catGeneral => 'సాధారణ';

  @override
  String get catOBC => 'OBC';

  @override
  String get catSC => 'SC';

  @override
  String get catST => 'ST';

  @override
  String get catEWS => 'EWS';

  @override
  String get catMinority => 'మైనారిటీ';

  @override
  String get occFarmer => 'రైతు';

  @override
  String get occStudent => 'విద్యార్థి';

  @override
  String get occSelfEmployed => 'సొంత వ్యాపారం';

  @override
  String get occSalaried => 'ఉద్యోగం (జీతం)';

  @override
  String get occUnemployed => 'నిరుద్యోగి / ఉద్యోగ అన్వేషణ';

  @override
  String get occHomemaker => 'గృహిణి';

  @override
  String get occRetired => 'సీనియర్ సిటిజన్ / పదవీ విరమణ';

  @override
  String get areaRural => 'గ్రామం / గ్రామీణ';

  @override
  String get areaUrban => 'పట్టణం / నగరం';

  @override
  String get incomeBelow1L => '₹1 లక్ష కంటే తక్కువ';

  @override
  String get income1to25 => '₹1–2.5 లక్షలు';

  @override
  String get income25to5 => '₹2.5–5 లక్షలు';

  @override
  String get income5to8 => '₹5–8 లక్షలు';

  @override
  String get incomeAbove8 => '₹8 లక్షల కంటే ఎక్కువ';

  @override
  String get next => 'తర్వాత';

  @override
  String get back => 'వెనుక';

  @override
  String get seeResults => 'నా పథకాలు చూపించు';

  @override
  String get eligibleBadge => 'అర్హత ఉండవచ్చు';

  @override
  String get maybeBadge => 'బహుశా అర్హులు';

  @override
  String get resultsEmpty => 'సరిపోయే పథకం లేదు';

  @override
  String get resultsEmptyHint =>
      '\'బ్రౌజ్\'లో వర్గం లేదా రాష్ట్రం ప్రకారం అన్ని పథకాలు చూడండి.';

  @override
  String get searchHint => 'పథకం వెతకండి, ఉదా. PM కిసాన్, స్కాలర్‌షిప్…';

  @override
  String get searchNoResults => 'ఏమీ కనబడలేదు';

  @override
  String get searchNoResultsHint =>
      'చిన్న పదాలు ప్రయత్నించండి: \'కిసాన్\', \'పెన్షన్\', \'రుణం\'.';

  @override
  String get browseCategories => 'వర్గం ప్రకారం';

  @override
  String get browseStates => 'రాష్ట్రం ప్రకారం';

  @override
  String get centralAllIndia => 'కేంద్ర (అఖిల భారత)';

  @override
  String stateSchemesOf(String state) {
    return '$state పథకాలు';
  }

  @override
  String get catAgriculture => 'వ్యవసాయం & రైతులు';

  @override
  String get catEducation => 'విద్య & స్కాలర్‌షిప్‌లు';

  @override
  String get catHealth => 'ఆరోగ్యం & బీమా';

  @override
  String get catHousing => 'గృహనిర్మాణం';

  @override
  String get catWomen => 'మహిళలు & పిల్లలు';

  @override
  String get catSenior => 'సీనియర్ సిటిజన్లు';

  @override
  String get catBusiness => 'వ్యాపారం & MSME';

  @override
  String get catEmployment => 'ఉపాధి & నైపుణ్యాలు';

  @override
  String get catEnergy => 'శక్తి & సోలార్';

  @override
  String get catSocialSecurity => 'పెన్షన్ & సంక్షేమం';

  @override
  String get catFood => 'రేషన్ & ఆహారం';

  @override
  String get benefitsTitle => 'లబ్ధిలు';

  @override
  String get eligibilityTitle => 'ఎవరు దరఖాస్తు చేసుకోవచ్చు';

  @override
  String get documentsTitle => 'అవసరమైన పత్రాలు';

  @override
  String get applyCta => 'అధికారిక పోర్టల్‌లో దరఖాస్తు చేయండి';

  @override
  String get sourcePortal => 'అధికారిక సమాచార మూలం';

  @override
  String lastVerified(String date) {
    return '$date న సమాచారం ధృవీకరించబడింది';
  }

  @override
  String get extraRulesTitle => 'ఇతర నిబంధనలు';

  @override
  String get disclaimerCard =>
      'ఇది ప్రభుత్వ యాప్ కాదు. సమాచారం అధికారిక పోర్టల్స్ (myScheme, రాష్ట్ర పోర్టల్స్) నుండి సేకరించబడింది. దరఖాస్తుకు ముందు అధికారిక వెబ్‌సైట్‌లో ఖచ్చితంగా సరిచూసుకోండి.';

  @override
  String get notGovtApp =>
      'స్వతంత్ర హెల్పర్ యాప్ — ఏ ప్రభుత్వ సంస్థతో అనుసంధానం లేదు.';

  @override
  String get dataNote =>
      'పూర్తిగా ఆఫ్‌లైన్‌లో పనిచేస్తుంది. మీ సమాధానాలు ఫోన్ నుండి బయటకు వెళ్ళవు.';

  @override
  String get privacyTitle => 'గోప్యత';

  @override
  String get privacyBody =>
      'ఈ యాప్‌లో లాగిన్ లేదా సర్వర్ లేదు. సమాధానాలు మీ పరికరంలోనే ఉంటాయి.';

  @override
  String get languageTitle => 'యాప్ భాష';

  @override
  String get shareAppTitle => 'ఈ యాప్ షేర్ చేయండి';

  @override
  String get aboutVersion => 'డేటా ప్యాక్ వెర్షన్';

  @override
  String get errorGeneric => 'ఏదో తప్పు జరిగింది. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get popularSchemes => 'ప్రస్తుతం జనప్రియం';

  @override
  String schemeCount(int n) {
    return '$n పథకాలు';
  }

  @override
  String get applyWarning =>
      '.gov.in / అధికారిక సైట్లలో మాత్రమే దరఖాస్తు చేయండి. ఏజెంట్లకు డబ్బు ఇవ్వవద్దు.';

  @override
  String get savedAnswers => 'సమాధానాలు ఈ పరికరంలో భద్రం';

  @override
  String get noGuarantee =>
      'అర్హత నిబంధనలు తీర్చడం వల్ల ఆమోదం లేదా ప్రయోజనం ఖాయమని హామీ లేదు. తుది నిర్ణయం సంబంధిత ప్రభుత్వ శాఖదే.';

  @override
  String get relatedTitle => 'సంబంధిత పథకాలు';
}
