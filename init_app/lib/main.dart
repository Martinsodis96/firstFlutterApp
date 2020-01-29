import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {

  MainPage({Key key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildMainPageAppBar(),
      body: buildMainPageBody(),
    );
  }
}

Center buildMainPageBody() {
  return Center(
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 250),
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
    ),
  );
}

TextFormField buildFormInputField(String inputFieldText) {
  return TextFormField(
      style: TextStyle(
        fontSize: 15,
      ),
      decoration: InputDecoration(
        labelText: inputFieldText
      ));
}

Container buildCenterColumnContainer(Widget widget) {
  return Container(
      height: 50, width: 260, margin: EdgeInsets.all(10), child: widget);
}

void handleSendRequestOnPress() {
  print("Contact Me");
}

AppBar buildMainPageAppBar() {
  return AppBar(
    title: Text("Flutter state management"),
    backgroundColor: Colors.teal,
    centerTitle: true,
  );
}