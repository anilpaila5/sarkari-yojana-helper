import 'dart:convert';
import 'dart:io';

const base = 'https://anilpaila5.github.io/sarkari-yojana-helper';

const packs = {
  'central.json': 'Central Government',
  'state_up.json': 'Uttar Pradesh',
  'state_bihar.json': 'Bihar',
  'state_maharashtra.json': 'Maharashtra',
  'state_tamilnadu.json': 'Tamil Nadu',
};

String esc(String s) => s
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&#39;');

String slug(String id) => id.replaceAll('_', '-');

final style = '''
body{font-family:system-ui,-apple-system,'Segoe UI',Roboto,'Noto Sans Devanagari',sans-serif;margin:0;color:#1c2b24;background:#fff;line-height:1.6}
a{color:#15693B}
.wrap{max-width:860px;margin:0 auto;padding:16px}
header{background:#15693B;color:#fff;padding:14px 16px}
header a{color:#fff;text-decoration:none;font-weight:700;font-size:18px}
.card{border:1px solid #dbe5df;border-radius:12px;padding:14px 16px;margin:10px 0;background:#fafcfb}
.btn{display:inline-block;background:#15693B;color:#fff!important;text-decoration:none;padding:10px 18px;border-radius:10px;font-weight:600;margin:4px 6px 4px 0}
.btn.alt{background:#fff;color:#15693B!important;border:1.5px solid #15693B}
h1{font-size:26px;margin:.4em 0}h2{font-size:20px;border-bottom:2px solid #e4ede8;padding-bottom:4px;margin-top:28px}
.hi{color:#3d5548}
ul{padding-left:20px}
.chip{display:inline-block;background:#eef4f0;border-radius:16px;padding:2px 12px;margin:2px;font-size:14px}
footer{margin-top:40px;padding:18px 16px;background:#f2f7f4;font-size:13px;color:#51665b}
.crumb{font-size:13px;color:#667c70;margin-top:10px}
.grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(240px,1fr));gap:10px}
''';

String pageShell({
  required String title,
  required String desc,
  required String canonicalPath,
  required String body,
}) {
  return '''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${esc(title)}</title>
<meta name="description" content="${esc(desc)}">
<link rel="canonical" href="$base$canonicalPath">
<meta property="og:title" content="${esc(title)}">
<meta property="og:description" content="${esc(desc)}">
<meta property="og:type" content="article">
<meta name="theme-color" content="#15693B">
<style>$style</style>
</head>
<body>
<header><div class="wrap"><a href="$base/">Sarkari Yojana Helper</a></div></header>
<div class="wrap">
$body
<footer>
Sarkari Yojana Helper is an independent information service and is NOT affiliated with the Government of India. Always verify details on official government websites before applying.
<br><a href="$base/">Home</a> · <a href="$base/schemes.html">All Schemes</a> · <a href="$base/app/">Open App</a>
<br>Last data update: ${DateTime.now().toIso8601String().substring(0, 10)}
</footer>
</div>
</body>
</html>''';
}

String eligBullets(Map s) {
  final e = (s['eligibility'] ?? {}) as Map<String, dynamic>;
  final out = <String>[];
  if (e['minAge'] != null || e['maxAge'] != null) {
    final lo = e['minAge'] ?? 0;
    final hi = e['maxAge'] != null ? '${e['maxAge']}' : '+';
    out.add('Age: $lo to $hi years');
  }
  if (e['gender'] != null && (e['gender'] as String).isNotEmpty) {
    out.add('Gender: ${e['gender']}');
  }
  if (e['categories'] is List && (e['categories'] as List).isNotEmpty) {
    out.add('Category: ${(e['categories'] as List).join(", ")}');
  }
  if (e['maxIncomeLakh'] != null) {
    out.add('Family income up to Rs. ${e['maxIncomeLakh']} lakh per year');
  }
  if (e['occupations'] is List && (e['occupations'] as List).isNotEmpty) {
    out.add('Occupation: ${(e['occupations'] as List).join(", ")}');
  }
  if (e['ruralOnly'] == true) out.add('Only for rural residents');
  return out.map((b) => '<li>${esc(b)}</li>').join('\n');
}

Future<void> copyDir(String from, String to) async {
  await Directory(to).create(recursive: true);
  await for (final f in Directory(from).list(recursive: true)) {
    if (f is File) {
      final rel = f.path.substring(from.length + 1);
      final target = File('$to/$rel');
      await target.create(recursive: true);
      await f.copy(target.path);
    }
  }
}

void main() async {
  final out = Directory('deploy_web');
  if (out.existsSync()) out.deleteSync(recursive: true);
  Directory('${out.path}/s').createSync(recursive: true);

  final all = <Map>[];
  final groups = <String, List<Map>>{};
  final packFiles = [
    'central.json',
    'state_up.json',
    'state_bihar.json',
    'state_maharashtra.json',
    'state_tamilnadu.json',
  ];
  for (final pf in packFiles) {
    final raw = await File('assets/data/$pf').readAsString();
    final data = jsonDecode(raw) as Map<String, dynamic>;
    final label = packs[pf]!;
    final list = ((data['schemes'] ?? []) as List).cast<Map>();
    groups[label] = list;
    for (final s in list) {
      s['_group'] = label;
      all.add(s);
    }
  }
  stdout.writeln('Loaded ${all.length} schemes');

  // ---------- article pages ----------
  final urls = <String>['/', '/schemes.html'];
  for (final s in all) {
    final id = s['id'] as String;
    final sl = slug(id);
    final nameEn = (s['names']['en'] ?? id) as String;
    final nameHi = (s['names']['hi'] ?? '') as String;
    final benEn = (s['benefits']['en'] ?? '') as String;
    final benHi = (s['benefits']['hi'] ?? '') as String;
    final docs = ((s['documents'] ?? []) as List).cast<String>();
    final applyUrl = (s['applyUrl'] ?? '') as String;
    final sourceUrl = (s['sourceUrl'] ?? '') as String;
    final group = s['_group'] as String;

    final desc = benEn.length > 155 ? benEn.substring(0, 152) + '...' : benEn;
    final body = StringBuffer();
    body.write(
        '<div class="crumb"><a href="$base/">Home</a> › <a href="$base/schemes.html">Schemes</a> › ${esc(group)}</div>');
    body.write('<h1>${esc(nameEn)}</h1>');
    if (nameHi.isNotEmpty) {
      body.write('<p class="hi" style="font-size:18px"><b>${esc(nameHi)}</b></p>');
    }
    body.write(
        '<p><a class="btn" href="$base/app/">Check Your Eligibility in App</a></p>');

    body.write('<h2>Benefits / लाभ</h2><p>${esc(benEn)}</p>');
    if (benHi.isNotEmpty) body.write('<p class="hi">${esc(benHi)}</p>');

    body.write('<h2>Who Can Apply / पात्रता</h2>');
    final bl = eligBullets(s);
    body.write(bl.isEmpty
        ? '<p>See the official website for detailed eligibility rules.</p>'
        : '<ul>\n$bl\n</ul>');
    final notes = s['eligibility'] is Map
        ? ((s['eligibility']['notes'] ?? {}) as Map)
        : {};
    if (notes.isNotEmpty) {
      final nEn = notes['en'];
      final nHi = notes['hi'];
      if (nEn != null) body.write('<p><i>${esc(nEn.toString())}</i></p>');
      if (nHi != null) body.write('<p class="hi"><i>${esc(nHi.toString())}</i></p>');
    }

    if (docs.isNotEmpty) {
      body.write('<h2>Documents Required / आवश्यक दस्तावेज़</h2><p>');
      body.write(docs.map((d) => '<span class="chip">${esc(d)}</span>').join(' '));
      body.write('</p>');
    }

    body.write('<!-- AD SLOT 1: paste your AdSense ad unit code here -->');
    body.write('<h2>How to Apply</h2>');
    if (applyUrl.isNotEmpty) {
      body.write(
          '<p><a class="btn" href="${esc(applyUrl)}" rel="nofollow noopener" target="_blank">Apply on Official Website</a></p>');
    } else {
      body.write(
          '<p>Apply through the official portal or your nearest CSC (Common Service Centre).</p>');
    }
    if (sourceUrl.isNotEmpty && sourceUrl != applyUrl) {
      body.write(
          '<p><a class="btn alt" href="${esc(sourceUrl)}" rel="nofollow noopener" target="_blank">Official Information Page</a></p>');
    }

    // related links
    final rel = all
        .where((o) =>
            o['id'] != id &&
            o['category'] == s['category'] &&
            o['_group'] == group)
        .take(5)
        .toList();
    if (rel.isNotEmpty) {
      body.write('<h2>Related Schemes</h2><ul>');
      for (final r in rel) {
        body.write(
            '<li><a href="$base/s/${slug(r['id'] as String)}.html">${esc((r['names']['en'] ?? r['id']) as String)}</a></li>');
      }
      body.write('</ul>');
    }

    final html = pageShell(
      title: '$nameEn 2026 – Benefits, Eligibility & Apply | Sarkari Yojana Helper',
      desc: desc,
      canonicalPath: '/s/$sl.html',
      body: body.toString(),
    );
    await File('${out.path}/s/$sl.html').writeAsString(html);
    urls.add('/s/$sl.html');
  }

  // ---------- directory ----------
  final dirBody = StringBuffer('<h1>All Government Schemes</h1>'
      '<p>Browse every scheme covered by Sarkari Yojana Helper, grouped by government level. '
      '<a href="$base/app/"><b>Open the interactive app to check your eligibility »</b></a></p>');
  for (final g in groups.entries) {
    dirBody.write('<h2>${esc(g.key)}</h2><ul>');
    for (final s in g.value) {
      dirBody.write(
          '<li><a href="$base/s/${slug(s['id'] as String)}.html">${esc((s['names']['en'] ?? s['id']) as String)}</a>'
          ' <span class="hi">— ${esc((s['names']['hi'] ?? '') as String)}</span></li>');
    }
    dirBody.write('</ul>');
  }
  await File('${out.path}/schemes.html').writeAsString(pageShell(
    title: 'All Sarkari Yojana – Central & State Government Schemes List 2026',
    desc: 'Complete list of central and state government schemes with benefits, eligibility and apply links.',
    canonicalPath: '/schemes.html',
    body: dirBody.toString(),
  ));

  // ---------- landing ----------
  final popular = all.where((s) => s['popular'] == true).take(12).toList();
  final land = StringBuffer('''
<h1>Find Government Schemes You Are Eligible For</h1>
<p class="hi" style="font-size:17px">अपने लिए सही सरकारी योजना खोजें — केंद्र और राज्य दोनों की।</p>
<p>Sarkari Yojana Helper helps you discover central and state government schemes in India.
Answer 7 simple questions and instantly see which yojanas you may be eligible for —
works fully offline, in 12 Indian languages.</p>
<p><a class="btn" href="$base/app/">Open the Free App</a>
<a class="btn alt" href="$base/schemes.html">Browse All Schemes</a></p>

<!-- AD SLOT 0: paste your AdSense unit here (below the fold of homepage) -->

<h2>Popular Schemes Right Now</h2>
<div class="grid">
''');
  for (final s in popular) {
    land.write('''<div class="card"><b><a href="$base/s/${slug(s['id'] as String)}.html">${esc((s['names']['en'] ?? s['id']) as String)}</a></b>
<p class="hi">${esc(((s['names']['hi'] ?? '') as String))}</p></div>
''');
  }
  land.write('</div><h2>Covered States</h2><p>');
  land.write(groups.keys
      .where((k) => k != 'Central Government')
      .map((k) => '<span class="chip">${esc(k)}</span>')
      .join(' '));
  land.write('</p>');
  await File('${out.path}/index.html').writeAsString(pageShell(
    title: 'Sarkari Yojana Helper – Find Government Schemes You Are Eligible For (2026)',
    desc: 'Free tool to discover Indian central & state government schemes. Check eligibility offline in 12 languages. PM-Kisan, Ayushman, pensions, scholarships and more.',
    canonicalPath: '/',
    body: land.toString(),
  ));

  // ---------- robots + sitemap ----------
  await File('${out.path}/robots.txt').writeAsString(
      'User-agent: *\nAllow: /\nSitemap: $base/sitemap.xml\n');
  final sb = StringBuffer(
      '<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n');
  for (final u in urls) {
    sb.write('<url><loc>$base$u</loc></url>\n');
  }
  sb.write('</urlset>\n');
  await File('${out.path}/sitemap.xml').writeAsString(sb.toString());

  // ---------- app ----------
  stdout.writeln('Copying Flutter web build...');
  await copyDir('build/web', '${out.path}/app');

  final count = Directory('${out.path}/s').listSync().length;
  stdout.writeln(
      'DONE: $count article pages + index + directory + sitemap + app in deploy_web/');
}
