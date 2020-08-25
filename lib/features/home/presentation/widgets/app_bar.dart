import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      width: 500,
      // margin: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 30),
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Row(
          children: [
            // searchTextField(),
            searchTextFieldTest(),
            Spacer(),
            searchButton(),
          ],
        ),
      ),
    );
  }

  Widget searchTextField() {
    return TextField(
      decoration: const InputDecoration(
          // prefixIcon: Icon(FeatherIcons.mail),
          labelText: 'Type any word...',
          border: InputBorder.none),
    );
  }

  Widget searchTextFieldTest(){
    return Text('Type any word...');
  }

  Widget searchButton() {
    return RaisedButton(
      onPressed: () {
        print('Search Button Clicked');
      },
      color: Colors.blue,
      child: Text('Search'),
    );
  }
}
