import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/scheme.dart';

class SchemeRepository {
  static const List<String> _packs = [
    'assets/data/central.json',
    'assets/data/state_up.json',
    'assets/data/state_bihar.json',
    'assets/data/state_maharashtra.json',
    'assets/data/state_tamilnadu.json',
  ];

  List<Scheme>? _cache;
  String _version = '';

  String get version => _version;

  Future<List<Scheme>> loadAll() async {
    if (_cache != null) return _cache!;
    final List<Scheme> all = [];
    for (final path in _packs) {
      try {
        final raw = await rootBundle.loadString(path);
        final data = jsonDecode(raw) as Map<String, dynamic>;
        _version = data['version'] as String? ?? _version;
        final list = data['schemes'] as List<dynamic>? ?? [];
        for (final item in list) {
          all.add(Scheme.fromJson(item as Map<String, dynamic>));
        }
      } catch (_) {
        continue;
      }
    }
    _cache = all;
    return all;
  }
}
