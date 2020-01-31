import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  minLines: 1,
                  showCursor: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white, style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 30,
                    ),
                    hintText: 'Search for dessert and shop',
                    hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
