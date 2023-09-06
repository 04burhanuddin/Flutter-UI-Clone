import 'package:flutter/material.dart';
import 'package:flutter_ui_clone/whatsapp/shared/color_constants.dart';
import 'package:flutter_ui_clone/whatsapp/widgets/widgets.dart';

class CostumeDelegateSearch extends SearchDelegate {
  final List<String> _searchItems = ['User One'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.clear,
          color: white,
          size: 22.0,
        ),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return SafeArea(
      child: IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 22.0,
          color: white,
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var contact in _searchItems) {
      if (contact.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(contact);
      }
    }
    return SafeArea(
      // color: black,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var contact in _searchItems) {
      if (contact.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(contact);
      }
    }
    return SafeArea(
      // color: black,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return chatItem(
            result,
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
            true,
            'Kenapa Cuy?',
            '',
            2,
            true,
          );
        },
      ),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) => ThemeData(
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle: TextStyle(color: gray),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: InputBorder.none,
            activeIndicatorBorder: BorderSide(color: Colors.red),
            fillColor: slate),
        scaffoldBackgroundColor: black,
        appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          color: slate,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
      );
}
