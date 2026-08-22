import 'dart:convert';
import 'dart:io';

const cp1252ToByte = <int, int>{
  0x20AC: 0x80, 0x201A: 0x82, 0x0192: 0x83, 0x201E: 0x84,
  0x2026: 0x85, 0x2020: 0x86, 0x2021: 0x87, 0x02C6: 0x88,
  0x2030: 0x89, 0x0160: 0x8A, 0x2039: 0x8B, 0x0152: 0x8C,
  0x017D: 0x8E, 0x2018: 0x91, 0x2019: 0x92, 0x201C: 0x93,
  0x201D: 0x94, 0x2022: 0x95, 0x2013: 0x96, 0x2014: 0x97,
  0x02DC: 0x98, 0x2122: 0x99, 0x0161: 0x9A, 0x203A: 0x9B,
  0x0153: 0x9C, 0x017E: 0x9E, 0x0178: 0x9F,
};

bool _isIndic(int cp) =>
    (cp >= 0x900 && cp <= 0xD7F);

bool _isCandidate(int cp) => cp >= 0x80 && !_isIndic(cp);

String _repairRun(String run) {
  final bytes = <int>[];
  for (final ch in run.runes) {
    if (cp1252ToByte.containsKey(ch)) {
      bytes.add(cp1252ToByte[ch]!);
    } else if (ch >= 0x80 && ch <= 0xFF) {
      // Includes C1 controls (U+0081/U+008D/U+008F/U+0090/U+009D) that
      // cp1252 leaves unmapped — their code point IS the original byte.
      bytes.add(ch);
    } else {
      return run;
    }
  }
  try {
    final decoded = utf8.decode(bytes);
    if (decoded.contains('\uFFFD')) return run;
    return decoded;
  } on FormatException {
    return run;
  }
}

String repair(String s) {
  final out = StringBuffer();
  final run = StringBuffer();
  void flush() {
    if (run.isEmpty) return;
    out.write(_repairRun(run.toString()));
    run.clear();
  }

  for (final ch in s.runes) {
    if (_isCandidate(ch)) {
      run.writeCharCode(ch);
    } else {
      flush();
      out.writeCharCode(ch);
    }
  }
  flush();
  return out.toString();
}

const titles = <String, String>{
  'app_en.arb': 'Related schemes',
  'app_hi.arb': 'संबंधित योजनाएँ',
  'app_bn.arb': 'সম্পর্কিত প্রকল্প',
  'app_mr.arb': 'संबंधित योजना',
  'app_te.arb': 'సంబంధిత పథకాలు',
  'app_ta.arb': 'தொடர்புடைய திட்டங்கள்',
  'app_gu.arb': 'સંબંધિત યોજનાઓ',
  'app_kn.arb': 'ಸಂಬಂಧಿತ ಯೋಜನೆಗಳು',
  'app_ml.arb': 'അനുബന്ധ പദ്ധതികൾ',
  'app_or.arb': 'ସମ୍ବନ୍ଧିତ ଯୋଜନା',
  'app_pa.arb': 'ਸਬੰਧਤ ਯੋਜਨਾਵਾਂ',
  'app_as.arb': 'সম্পৰ্কিত যোজনা',
};

void main() {
  final dir = Directory('lib/l10n');
  for (final f in dir.listSync()) {
    if (f is! File || !f.path.endsWith('.arb')) continue;
    final name = f.uri.pathSegments.last;
    var text = f.readAsStringSync();

    var rupeesBefore = '\u20B9'.allMatches(text).length;
    text = repair(text);
    var badLeft = '\u00E2'.allMatches(text).length;
    var rupees = '\u20B9'.allMatches(text).length;

    if (!text.contains('"relatedTitle"')) {
      final title = titles[name];
      if (title != null) {
        final trimmed = text.trimRight();
        final idx = trimmed.lastIndexOf('}');
        var body = trimmed.substring(0, idx).trimRight();
        if (body.endsWith(',')) body = body.substring(0, body.length - 1);
        text = '$body,\n  "relatedTitle": "$title"\n}\n';
      }
    }

    f.writeAsStringSync(text, encoding: utf8);
    stdout.writeln(
        '$name : rupees=$rupees (was $rupeesBefore) leftover-suspect=$badLeft relatedTitle=${text.contains('"relatedTitle"')}');
  }
}
