import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

/// TODO: replace with your real support email before publishing.
const String kContactEmail = 'sarkariyojahelper.help@gmail.com';
const String kPolicyUpdated = '22 August 2026';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isHi = Localizations.localeOf(context).languageCode == 'hi';
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.privacyTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (isHi) ..._hiSections(context) else ..._enSections(context),
          const SizedBox(height: 24),
          Center(
            child: Text('Last updated: $kPolicyUpdated',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant)),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _section(BuildContext context, String title, String body) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Text(body, style: Theme.of(context).textTheme.bodyMedium),
        ],
      );

  List<Widget> _enSections(BuildContext context) {
    return [
      _section(context, 'Independent app - not a government app',
          'Sarkari Yojana Helper ("the app") is an independent information service. It is NOT affiliated with, endorsed by, or operated by the Government of India, any state government, or any government department. All scheme names are used only to describe publicly available government programmes. Always verify details on official government websites (.gov.in / .nic.in) before applying.'),
      _section(context, 'Information we collect',
          'The app does NOT require registration and does not collect, store or transmit your personal information to our servers (we operate no such servers). Your quiz answers (state, age range, category, income range, occupation, area type) are stored ONLY on your device using local app storage. You can erase them at any time by clearing the app data or uninstalling the app.'),
      _section(context, 'Permissions used',
          'The app uses the Internet permission only, to open official government websites when you tap "Apply" links and to display advertisements.'),
      _section(context, 'Advertisements',
          'The app shows ads served by Google AdMob. Google and its partners may use the advertising ID from your device and limited device data to serve and measure ads, as described in Google\'s Privacy Policy (https://policies.google.com/privacy). You can opt out of personalised advertising in your phone Settings > Google > Ads.'),
      _section(context, 'Data sharing',
          'We do not sell, rent or share your data, because we do not collect it. The only third-party processing is by Google for ad serving as described above.'),
      _section(context, 'Children',
          'The app is a general-audience information tool and is not directed at children under 13. We knowingly collect no personal data from anyone, including children.'),
      _section(context, 'Accuracy of scheme information',
          'Scheme information is compiled from public government sources (such as myScheme.gov.in and state portals) and includes a source link and last-verified date on each detail page. Rules change frequently; we make no guarantee that information is current or complete, and eligibility shown in the app does not guarantee approval of any benefit. The final decision always rests with the concerned government department.'),
      _section(context, 'Changes to this policy',
          'If we change this policy, the updated version will appear inside the app with a new "last updated" date.'),
      _section(context, 'Contact',
          'Questions or corrections: $kContactEmail'),
    ];
  }

  List<Widget> _hiSections(BuildContext context) {
    return [
      _section(context, 'स्वतंत्र ऐप — सरकारी ऐप नहीं',
          '"सरकारी योजना हेल्पर" एक स्वतंत्र सूचना सेवा है। यह भारत सरकार, किसी राज्य सरकार या किसी सरकारी विभाग से संबद्ध, समर्थित या संचालित नहीं है। योजनाओं के नाम केवल सार्वजनिक सरकारी कार्यक्रमों का वर्णन करने के लिए उपयोग किए जाते हैं। आवेदन से पहले हमेशा आधिकारिक सरकारी वेबसाइट (.gov.in / .nic.in) पर जानकारी की पुष्टि करें।'),
      _section(context, 'हम कौन-सी जानकारी लेते हैं',
          'ऐप में न रजिस्ट्रेशन चाहिए, न हमारा कोई सर्वर है जो आपकी जानकारी इकट्ठा करे। आपके क्विज़ उत्तर (राज्य, आयु, श्रेणी, आय, व्यवसाय, क्षेत्र) केवल आपके फ़ोन में लोकल स्टोरेज में रहते हैं। ऐप डेटा साफ़ करने या अनइंस्टॉल करने पर यह जानकारी मिट जाती है।'),
      _section(context, 'उपयोग होने वाली अनुमतियाँ',
          'ऐप केवल Internet अनुमति उपयोग करता है — "अर्ज़ी दिएँ" लिंक से सरकारी वेबसाइट खोलने और विज्ञापन दिखाने के लिए।'),
      _section(context, 'विज्ञापन',
          'ऐप में Google AdMob के विज्ञापन दिखाए जाते हैं। Google और उसके साझेदार विज्ञापन दिखाने व मापने के लिए आपके डिवाइस की Advertising ID और सीमित डेटा का उपयोग कर सकते हैं (https://policies.google.com/privacy)। फ़ोन सेटिंग > Google > Ads से पर्सनलाइज़्ड विज्ञापन बंद किए जा सकते हैं।'),
      _section(context, 'डेटा साझा करना',
          'हम आपका डेटा इकट्ठा ही नहीं करते, इसलिए बेचते या साझा भी नहीं करते। एकमात्र तीसरे पक्ष की प्रक्रिया ऊपर बताए अनुसार Google का विज्ञापन-सेवा है।'),
      _section(context, 'बच्चों से संबंधित',
          'यह ऐप सामान्य दर्शकों के लिए है और 13 साल से कम उम्र के बच्चों को लक्षित नहीं करता। हम किसी से भी जानबूझकर व्यक्तिगत डेटा नहीं लेते।'),
      _section(context, 'योजना जानकारी की सटीकता',
          'योजना की जानकारी सार्वजनिक सरकारी स्रोतों (myScheme.gov.in व राज्य पोर्टल) से संकलित है; हर पेज पर स्रोत लिंक और जाँच-तिथि दी गई है। नियम बार-बार बदलते हैं — जानकारी के सटीक होने की कोई गारंटी नहीं है, और ऐप में पात्रता दिखना किसी लाभ की स्वीकृति की गारंटी नहीं है। अंतिम निर्णय संबंधित सरकारी विभाग का होता है।'),
      _section(context, 'नीति में बदलाव',
          'नीति बदलने पर ऐप के अंदर नया संस्करण और तारीख दिखाई जाएगी।'),
      _section(context, 'संपर्क',
          'सुझाव/शिकायत के लिए: $kContactEmail'),
    ];
  }
}
