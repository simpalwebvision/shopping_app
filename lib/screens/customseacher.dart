import 'package:flutter/material.dart';

class CustomSearcher extends StatefulWidget {
  @override
  _CustomSearcherState createState() => _CustomSearcherState();
}

class _CustomSearcherState extends State<CustomSearcher> {
  List<String> items = [
    'Vodka',
    'Rum',
    'Tequila',
    'Whiskey',
    'Gin',
    'Bourbon',
    'Scotch',
    'Brandy',
    'Cognac',
    'Absinthe',
    'Sake',
    'Champagne',
    'Prosecco'
        'Beer'
        'Wine'
        'Port'
        'Sherry'
        'Vermouth'
        'Mead'
        'Sangri',
    'Mojito'
        'Margarita'
        'Martini'
        'Old Fashioned'
        'Negroni'
        'Moscow Mule'
        'Piña Colada'
        'Mai Tai'
        'Cosmopolitan'
        'Mojito'
        'Caipirinha'
        'Sazerac'
        'Paloma'
        'Dark and Stormy'
        'Irish Coffee'
        'Hot Toddy'
        'Mimosa'
        'Bellini'
        'Long Island Iced Tea'
        'Jägerbomb'
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
    home: CustomSearcher(),
  ));
}
