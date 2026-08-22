import '../l10n/app_localizations.dart';

/// Wire codes used in dataset `states` arrays.
class IndianState {
  final String code;
  final String en;
  final String hi;
  const IndianState(this.code, this.en, this.hi);
}

const List<IndianState> kStates = [
  IndianState('andhra_pradesh', 'Andhra Pradesh', 'आंध्र प्रदेश'),
  IndianState('arunachal_pradesh', 'Arunachal Pradesh', 'अरुणाचल प्रदेश'),
  IndianState('assam', 'Assam', 'असम'),
  IndianState('bihar', 'Bihar', 'बिहार'),
  IndianState('chhattisgarh', 'Chhattisgarh', 'छत्तीसगढ़'),
  IndianState('goa', 'Goa', 'गोवा'),
  IndianState('gujarat', 'Gujarat', 'गुजरात'),
  IndianState('haryana', 'Haryana', 'हरियाणा'),
  IndianState('himachal_pradesh', 'Himachal Pradesh', 'हिमाचल प्रदेश'),
  IndianState('jharkhand', 'Jharkhand', 'झारखंड'),
  IndianState('karnataka', 'Karnataka', 'कर्नाटक'),
  IndianState('kerala', 'Kerala', 'केरल'),
  IndianState('madhya_pradesh', 'Madhya Pradesh', 'मध्य प्रदेश'),
  IndianState('maharashtra', 'Maharashtra', 'महाराष्ट्र'),
  IndianState('manipur', 'Manipur', 'मणिपुर'),
  IndianState('meghalaya', 'Meghalaya', 'मेघालय'),
  IndianState('mizoram', 'Mizoram', 'मिज़ोरम'),
  IndianState('nagaland', 'Nagaland', 'नागालैंड'),
  IndianState('odisha', 'Odisha', 'ओडिशा'),
  IndianState('punjab', 'Punjab', 'पंजाब'),
  IndianState('rajasthan', 'Rajasthan', 'राजस्थान'),
  IndianState('sikkim', 'Sikkim', 'सिक्किम'),
  IndianState('tamil_nadu', 'Tamil Nadu', 'तमिलनाडु'),
  IndianState('telangana', 'Telangana', 'तेलंगाना'),
  IndianState('tripura', 'Tripura', 'त्रिपुरा'),
  IndianState('up', 'Uttar Pradesh', 'उत्तर प्रदेश'),
  IndianState('uttarakhand', 'Uttarakhand', 'उत्तराखंड'),
  IndianState('west_bengal', 'West Bengal', 'पश्चिम बंगाल'),
  IndianState('delhi', 'Delhi (NCT)', 'दिल्ली'),
  IndianState('jammu_kashmir', 'Jammu & Kashmir', 'जम्मू और कश्मीर'),
];

String stateDisplayName(String code, AppLocalizations l10n) {
  final s = kStates.where((x) => x.code == code).toList();
  if (s.isEmpty) return code;
  // Show Hindi name for Hindi UI, English otherwise.
  if (l10n.localeName == 'hi') return s.first.hi;
  return s.first.en;
}
