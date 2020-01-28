import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final String appTitle = "Portfolio";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildCenter(),
    );
  }

  Center buildCenter() {
    return Center(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildCenterColumnContainer(
                buildFormInputField("Full name"),
            ),
            buildCenterColumnContainer(
                buildFormInputField("Email")
            ),
            buildCenterColumnContainer(
                buildFormInputField("Meddelande")
            ),
            buildCenterColumnContainer(RaisedButton(
              color: Colors.teal,
              onPressed: () {
                handleSendRequestOnPress();
              },
              child: Text(
                "Contact Me",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            )),
          ],
        ),
      ),
    );
  }

  TextFormField buildFormInputField(String inputFieldText) {
    return TextFormField(
        style: TextStyle(
          fontSize: 15,
        ),
        decoration: InputDecoration(
          hintText: inputFieldText,
        ));
  }

  Container buildCenterColumnContainer(Widget widget) {
    return Container(
        height: 50, width: 250, margin: EdgeInsets.all(10), child: widget);
  }

  void handleSendRequestOnPress() {
    print("Contact Me");
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(appTitle),
      backgroundColor: Colors.teal,
      centerTitle: true,
    );
  }
}
