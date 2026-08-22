import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/user_profile.dart';
import '../widgets/state_names.dart';

const _incomeBuckets = [
  ('below_1', 0.75),
  ('1_25', 1.75),
  ('25_5', 3.75),
  ('5_8', 6.5),
  ('above_8', 9.0),
];

class QuizScreen extends StatefulWidget {
  final UserProfile initial;

  const QuizScreen({super.key, required this.initial});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late String? _state;
  int? _age;
  late Gender _gender;
  late SocialCategory _category;
  double? _income;
  late Occupation _occupation;
  AreaType _area = AreaType.unknown;
  final _ageCtrl = TextEditingController();

  int get _total => 7;
  int _step = 0;

  @override
  void initState() {
    super.initState();
    _state = widget.initial.state.isEmpty ? null : widget.initial.state;
    _age = widget.initial.age;
    if (_age != null) _ageCtrl.text = '$_age';
    _gender = widget.initial.gender;
    _category = widget.initial.category;
    _income = widget.initial.incomeLakh;
    _occupation = widget.initial.occupation;
  }

  @override
  void dispose() {
    _ageCtrl.dispose();
    super.dispose();
  }

  bool get _canNext {
    switch (_step) {
      case 0:
        return _state != null;
      case 1:
        return _age != null && _age! >= 5 && _age! <= 120;
      case 2:
        return true; // gender skippable
      case 3:
        return true; // category skippable
      case 4:
        return true; // income skippable
      case 5:
        return _occupation != Occupation.unknown;
      case 6:
        return _area != AreaType.unknown;
    }
    return false;
  }

  void _next() {
    if (_step < _total - 1) {
      setState(() => _step++);
    } else {
      Navigator.of(context).pop(UserProfile(
        state: _state ?? '',
        age: _age,
        gender: _gender,
        category: _category,
        incomeLakh: _income,
        occupation: _occupation,
        area: _area,
      ));
    }
  }

  void _back() {
    if (_step > 0) setState(() => _step--);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.stepOf(_step + 1, _total)),
        leading: BackButton(onPressed: _back),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: _canNext ? _next : null,
                child: Text(
                  _step == _total - 1 ? l10n.seeResults : l10n.next,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(child: _body(l10n)),
      ),
    );
  }

  Widget _body(AppLocalizations l10n) {
    switch (_step) {
      case 0:
        return _stateStep(l10n);
      case 1:
        return _ageStep(l10n);
      case 2:
        return _choiceStep<Gender>(
          title: l10n.qGender,
          options: [
            (Gender.male, l10n.genderMale),
            (Gender.female, l10n.genderFemale),
            (Gender.other, l10n.genderOther),
            (Gender.unknown, l10n.preferNotSay),
          ],
          selected: _gender,
          onSelect: (v) => setState(() => _gender = v),
        );
      case 3:
        return _choiceStep<SocialCategory>(
          title: l10n.qCategory,
          options: [
            (SocialCategory.general, l10n.catGeneral),
            (SocialCategory.obc, l10n.catOBC),
            (SocialCategory.sc, l10n.catSC),
            (SocialCategory.st, l10n.catST),
            (SocialCategory.ews, l10n.catEWS),
            (SocialCategory.minority, l10n.catMinority),
            (SocialCategory.unknown, l10n.skipOptional),
          ],
          selected: _category,
          onSelect: (v) => setState(() => _category = v),
        );
      case 4:
        return _incomeStep(l10n);
      case 5:
        return _choiceStep<Occupation>(
          title: l10n.qOccupation,
          options: [
            (Occupation.farmer, l10n.occFarmer),
            (Occupation.student, l10n.occStudent),
            (Occupation.selfEmployed, l10n.occSelfEmployed),
            (Occupation.salaried, l10n.occSalaried),
            (Occupation.unemployed, l10n.occUnemployed),
            (Occupation.homemaker, l10n.occHomemaker),
            (Occupation.retired, l10n.occRetired),
          ],
          selected: _occupation,
          onSelect: (v) => setState(() => _occupation = v),
        );
      case 6:
        return _choiceStep<AreaType>(
          title: l10n.qArea,
          options: [
            (AreaType.rural, l10n.areaRural),
            (AreaType.urban, l10n.areaUrban),
          ],
          selected: _area,
          onSelect: (v) => setState(() => _area = v),
        );
    }
    return const SizedBox.shrink();
  }

  Widget _question(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 18, top: 8),
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold)),
      );

  Widget _stateStep(AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _question(l10n.qState),
        Flexible(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: kStates.length,
            itemBuilder: (context, i) {
              final s = kStates[i];
              return RadioListTile<String>(
                value: s.code,
                groupValue: _state,
                onChanged: (v) {
                  setState(() => _state = v);
                },
                title: Text(l10n.localeName == 'hi' ? s.hi : s.en),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _ageStep(AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _question(l10n.qAge),
        TextField(
          controller: _ageCtrl,
          keyboardType: TextInputType.number,
          maxLength: 3,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            suffixText: l10n.localeName == 'hi' ? 'साल' : 'years',
          ),
          onChanged: (v) {
            final n = int.tryParse(v);
            setState(() => _age = n);
          },
        ),
      ],
    );
  }

  Widget _incomeStep(AppLocalizations l10n) {
    final labels = [
      l10n.incomeBelow1L,
      l10n.income1to25,
      l10n.income25to5,
      l10n.income5to8,
      l10n.incomeAbove8,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _question(l10n.qIncome),
        ...List.generate(labels.length, (i) {
          final val = _incomeBuckets[i].$2;
          return RadioListTile<double>(
            value: val,
            groupValue: _income,
            onChanged: (v) => setState(() => _income = v),
            title: Text(labels[i]),
          );
        }),
        RadioListTile<double>(
          value: -1,
          groupValue: _income,
          onChanged: (v) => setState(() => _income = null),
          title: Text(l10n.skipOptional),
        ),
      ],
    );
  }

  Widget _choiceStep<T>(
      {required String title,
      required List<(T, String)> options,
      required T selected,
      required void Function(T) onSelect}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _question(title),
        ...options.map((o) {
          return RadioListTile<T>(
            value: o.$1,
            groupValue: selected,
            onChanged: (v) { if (v != null) onSelect(v); },
            title: Text(o.$2),
          );
        }),
      ],
    );
  }
}
