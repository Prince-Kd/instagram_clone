import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey[600],),
            fillColor: Colors.grey[200],
            filled: true,
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 19, color: Colors.grey[500]),
            contentPadding: const EdgeInsets.only(top: 14),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(14)
            )
        ),
      ),
    );
  }
}
