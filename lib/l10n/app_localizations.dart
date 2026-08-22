import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('as'),
    Locale('bn'),
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('kn'),
    Locale('ml'),
    Locale('mr'),
    Locale('or'),
    Locale('pa'),
    Locale('ta'),
    Locale('te'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Sarkari Yojana Helper'**
  String get appTitle;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'Government schemes made simple'**
  String get tagline;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navBrowse.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get navBrowse;

  /// No description provided for @navSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get navSearch;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @findSchemesCta.
  ///
  /// In en, this message translates to:
  /// **'Find schemes for me'**
  String get findSchemesCta;

  /// No description provided for @quizSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Answer 6 quick questions. No sign-up. Nothing leaves your phone.'**
  String get quizSubtitle;

  /// No description provided for @startQuiz.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get startQuiz;

  /// No description provided for @retakeQuiz.
  ///
  /// In en, this message translates to:
  /// **'Change my answers'**
  String get retakeQuiz;

  /// No description provided for @yourMatches.
  ///
  /// In en, this message translates to:
  /// **'Schemes for you'**
  String get yourMatches;

  /// No description provided for @matchesCount.
  ///
  /// In en, this message translates to:
  /// **'{n} matching schemes found'**
  String matchesCount(int n);

  /// No description provided for @stepOf.
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total}'**
  String stepOf(int current, int total);

  /// No description provided for @qState.
  ///
  /// In en, this message translates to:
  /// **'Which state do you live in?'**
  String get qState;

  /// No description provided for @qAge.
  ///
  /// In en, this message translates to:
  /// **'How old are you?'**
  String get qAge;

  /// No description provided for @qGender.
  ///
  /// In en, this message translates to:
  /// **'Your gender'**
  String get qGender;

  /// No description provided for @qCategory.
  ///
  /// In en, this message translates to:
  /// **'Social category'**
  String get qCategory;

  /// No description provided for @qIncome.
  ///
  /// In en, this message translates to:
  /// **'Annual family income'**
  String get qIncome;

  /// No description provided for @qOccupation.
  ///
  /// In en, this message translates to:
  /// **'What do you do?'**
  String get qOccupation;

  /// No description provided for @qArea.
  ///
  /// In en, this message translates to:
  /// **'Where do you live?'**
  String get qArea;

  /// No description provided for @selectState.
  ///
  /// In en, this message translates to:
  /// **'Select your state'**
  String get selectState;

  /// No description provided for @skipOptional.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skipOptional;

  /// No description provided for @genderMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get genderMale;

  /// No description provided for @genderFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get genderFemale;

  /// No description provided for @genderOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get genderOther;

  /// No description provided for @preferNotSay.
  ///
  /// In en, this message translates to:
  /// **'Prefer not to say'**
  String get preferNotSay;

  /// No description provided for @catGeneral.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get catGeneral;

  /// No description provided for @catOBC.
  ///
  /// In en, this message translates to:
  /// **'OBC'**
  String get catOBC;

  /// No description provided for @catSC.
  ///
  /// In en, this message translates to:
  /// **'SC'**
  String get catSC;

  /// No description provided for @catST.
  ///
  /// In en, this message translates to:
  /// **'ST'**
  String get catST;

  /// No description provided for @catEWS.
  ///
  /// In en, this message translates to:
  /// **'EWS'**
  String get catEWS;

  /// No description provided for @catMinority.
  ///
  /// In en, this message translates to:
  /// **'Minority'**
  String get catMinority;

  /// No description provided for @occFarmer.
  ///
  /// In en, this message translates to:
  /// **'Farmer'**
  String get occFarmer;

  /// No description provided for @occStudent.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get occStudent;

  /// No description provided for @occSelfEmployed.
  ///
  /// In en, this message translates to:
  /// **'Self-employed / Business'**
  String get occSelfEmployed;

  /// No description provided for @occSalaried.
  ///
  /// In en, this message translates to:
  /// **'Salaried job'**
  String get occSalaried;

  /// No description provided for @occUnemployed.
  ///
  /// In en, this message translates to:
  /// **'Unemployed / Job seeker'**
  String get occUnemployed;

  /// No description provided for @occHomemaker.
  ///
  /// In en, this message translates to:
  /// **'Homemaker'**
  String get occHomemaker;

  /// No description provided for @occRetired.
  ///
  /// In en, this message translates to:
  /// **'Senior citizen / Retired'**
  String get occRetired;

  /// No description provided for @areaRural.
  ///
  /// In en, this message translates to:
  /// **'Village / Rural'**
  String get areaRural;

  /// No description provided for @areaUrban.
  ///
  /// In en, this message translates to:
  /// **'Town / City'**
  String get areaUrban;

  /// No description provided for @incomeBelow1L.
  ///
  /// In en, this message translates to:
  /// **'Below ₹1 lakh'**
  String get incomeBelow1L;

  /// No description provided for @income1to25.
  ///
  /// In en, this message translates to:
  /// **'₹1–2.5 lakh'**
  String get income1to25;

  /// No description provided for @income25to5.
  ///
  /// In en, this message translates to:
  /// **'₹2.5–5 lakh'**
  String get income25to5;

  /// No description provided for @income5to8.
  ///
  /// In en, this message translates to:
  /// **'₹5–8 lakh'**
  String get income5to8;

  /// No description provided for @incomeAbove8.
  ///
  /// In en, this message translates to:
  /// **'Above ₹8 lakh'**
  String get incomeAbove8;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @seeResults.
  ///
  /// In en, this message translates to:
  /// **'See my schemes'**
  String get seeResults;

  /// No description provided for @eligibleBadge.
  ///
  /// In en, this message translates to:
  /// **'Likely eligible'**
  String get eligibleBadge;

  /// No description provided for @maybeBadge.
  ///
  /// In en, this message translates to:
  /// **'May be eligible'**
  String get maybeBadge;

  /// No description provided for @resultsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No direct matches'**
  String get resultsEmpty;

  /// No description provided for @resultsEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Try Browse to explore all schemes by category or state.'**
  String get resultsEmptyHint;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search scheme, e.g. PM Kisan, scholarship…'**
  String get searchHint;

  /// No description provided for @searchNoResults.
  ///
  /// In en, this message translates to:
  /// **'Nothing found'**
  String get searchNoResults;

  /// No description provided for @searchNoResultsHint.
  ///
  /// In en, this message translates to:
  /// **'Try shorter words like \'kisan\', \'pension\', \'loan\'.'**
  String get searchNoResultsHint;

  /// No description provided for @browseCategories.
  ///
  /// In en, this message translates to:
  /// **'By category'**
  String get browseCategories;

  /// No description provided for @browseStates.
  ///
  /// In en, this message translates to:
  /// **'By state'**
  String get browseStates;

  /// No description provided for @centralAllIndia.
  ///
  /// In en, this message translates to:
  /// **'Central (All India)'**
  String get centralAllIndia;

  /// No description provided for @stateSchemesOf.
  ///
  /// In en, this message translates to:
  /// **'{state} schemes'**
  String stateSchemesOf(String state);

  /// No description provided for @catAgriculture.
  ///
  /// In en, this message translates to:
  /// **'Agriculture & Farmers'**
  String get catAgriculture;

  /// No description provided for @catEducation.
  ///
  /// In en, this message translates to:
  /// **'Education & Scholarships'**
  String get catEducation;

  /// No description provided for @catHealth.
  ///
  /// In en, this message translates to:
  /// **'Health & Insurance'**
  String get catHealth;

  /// No description provided for @catHousing.
  ///
  /// In en, this message translates to:
  /// **'Housing'**
  String get catHousing;

  /// No description provided for @catWomen.
  ///
  /// In en, this message translates to:
  /// **'Women & Child'**
  String get catWomen;

  /// No description provided for @catSenior.
  ///
  /// In en, this message translates to:
  /// **'Senior Citizens'**
  String get catSenior;

  /// No description provided for @catBusiness.
  ///
  /// In en, this message translates to:
  /// **'Business & MSME'**
  String get catBusiness;

  /// No description provided for @catEmployment.
  ///
  /// In en, this message translates to:
  /// **'Jobs & Skills'**
  String get catEmployment;

  /// No description provided for @catEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy & Solar'**
  String get catEnergy;

  /// No description provided for @catSocialSecurity.
  ///
  /// In en, this message translates to:
  /// **'Pension & Social Security'**
  String get catSocialSecurity;

  /// No description provided for @catFood.
  ///
  /// In en, this message translates to:
  /// **'Food & Ration'**
  String get catFood;

  /// No description provided for @benefitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Benefits'**
  String get benefitsTitle;

  /// No description provided for @eligibilityTitle.
  ///
  /// In en, this message translates to:
  /// **'Who can apply'**
  String get eligibilityTitle;

  /// No description provided for @documentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Documents needed'**
  String get documentsTitle;

  /// No description provided for @applyCta.
  ///
  /// In en, this message translates to:
  /// **'Apply on official portal'**
  String get applyCta;

  /// No description provided for @sourcePortal.
  ///
  /// In en, this message translates to:
  /// **'Official info source'**
  String get sourcePortal;

  /// No description provided for @lastVerified.
  ///
  /// In en, this message translates to:
  /// **'Details verified on {date}'**
  String lastVerified(String date);

  /// No description provided for @extraRulesTitle.
  ///
  /// In en, this message translates to:
  /// **'Other conditions'**
  String get extraRulesTitle;

  /// No description provided for @disclaimerCard.
  ///
  /// In en, this message translates to:
  /// **'Not a government app. Information compiled from official public portals (myScheme, state portals). Always confirm on the official website before applying.'**
  String get disclaimerCard;

  /// No description provided for @notGovtApp.
  ///
  /// In en, this message translates to:
  /// **'Independent helper app — not affiliated with any government body.'**
  String get notGovtApp;

  /// No description provided for @dataNote.
  ///
  /// In en, this message translates to:
  /// **'Works fully offline. Your answers never leave this phone.'**
  String get dataNote;

  /// No description provided for @privacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacyTitle;

  /// No description provided for @privacyBody.
  ///
  /// In en, this message translates to:
  /// **'This app has no login and no server. Quiz answers stay on your device only.'**
  String get privacyBody;

  /// No description provided for @languageTitle.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get languageTitle;

  /// No description provided for @shareAppTitle.
  ///
  /// In en, this message translates to:
  /// **'Share this app'**
  String get shareAppTitle;

  /// No description provided for @aboutVersion.
  ///
  /// In en, this message translates to:
  /// **'Data pack version'**
  String get aboutVersion;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get errorGeneric;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @popularSchemes.
  ///
  /// In en, this message translates to:
  /// **'Popular right now'**
  String get popularSchemes;

  /// No description provided for @schemeCount.
  ///
  /// In en, this message translates to:
  /// **'{n} schemes'**
  String schemeCount(int n);

  /// No description provided for @applyWarning.
  ///
  /// In en, this message translates to:
  /// **'Apply only on .gov.in / official sites. Never pay agents.'**
  String get applyWarning;

  /// No description provided for @savedAnswers.
  ///
  /// In en, this message translates to:
  /// **'Answers saved on this device'**
  String get savedAnswers;

  /// No description provided for @noGuarantee.
  ///
  /// In en, this message translates to:
  /// **'Meeting eligibility criteria does not guarantee approval or benefit. The final decision always rests with the concerned government department.'**
  String get noGuarantee;

  /// No description provided for @relatedTitle.
  ///
  /// In en, this message translates to:
  /// **'Related schemes'**
  String get relatedTitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'as',
    'bn',
    'en',
    'gu',
    'hi',
    'kn',
    'ml',
    'mr',
    'or',
    'pa',
    'ta',
    'te',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'as':
      return AppLocalizationsAs();
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'kn':
      return AppLocalizationsKn();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
