import 'package:flutter/material.dart';

class SeacherDawa extends StatefulWidget {
  @override
  _SeacherDawaState createState() => _SeacherDawaState();
}

class _SeacherDawaState extends State<SeacherDawa> {
  List<String> items = [
    'Healixen'
        'Cureallium'
        'Vitalife'
        'Rejuvix'
        'Medisol'
        'Panacura'
        'Revitalon'
        'Theraplix'
        'RemediX'
        'HealthGuard'
        'Pharmalife'
        'Vigorin'
        'Mendisol'
        'ImmunoFix'
        'Replenex'
        'Wellnessa'
        'PanaceaPro'
        'Revitox'
        'BioRecover'
        'CureWave'
        'Vitalixir'
        'Regenexa'
        'ZenithaCure'
        'Resilifex'
        'Medigenix'
        'Lifesurge'
        'Immunexa'
        'CureSphere'
        'Recovita'
        'VitaShield'
        'HarmonyPlus'
        'Invigora'
        'WellnessMax'
        'CureSculpt'
        'PurityPeak'
        'Immunify'
        'Renewix'
        'CurePulse'
        'VigorGlow'
        'Restoreon'
        'Meditron'
        'Rejuvenex'
        'HealthHarbor'
        'Immunara'
        'CureRise'
        'VitalizePlus'
        'ZeniCure'
        'BioZenith'
        'ReNuMax'
        'VitalSculpt'
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems.addAll(items);
  }

  void filterSearchResults(String query) {
    List<String> searchResults = [];
    searchResults.addAll(items);

    if (query.isNotEmpty) {
      searchResults.retainWhere(
          (item) => item.toLowerCase().contains(query.toLowerCase()));
    }

    setState(() {
      filteredItems.clear();
      filteredItems.addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.red),
        title: Padding(
          padding: const EdgeInsets.only(right: 90),
          child: Image.asset(
            'assets/images/dawa-daru.png',
            scale: 15,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Type here...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredItems[index]),
                  // You can add more functionality here for each list item.
                  // For example, you can navigate to a detail page.
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SeacherDawa(),
  ));
}
