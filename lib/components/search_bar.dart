import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 18.0),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
