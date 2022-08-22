import 'package:doctroid_app/main.dart';
import 'package:flutter/material.dart';
import 'dbFunc.dart';

class HomePaged extends StatefulWidget {
  HomePaged({Key key, this.title, this.uid})
      : super(key: key); //update this to include the uid in the constructor
  final String title;
  final String uid; //include this

  @override
  _HomePagedState createState() => _HomePagedState();
}

class _HomePagedState extends State<HomePaged> {
  TextEditingController taskTitleInputController;
  TextEditingController taskDescripInputController;
  // ignore: deprecated_member_use

  var s;

  @override
  initState() {
    taskTitleInputController = new TextEditingController();
    taskDescripInputController = new TextEditingController();
    this.getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Prescription'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              }),
        ],
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text('Create Record'),
            onPressed: () {
              createRecord();
            },
          ),
          RaisedButton(
            child: Text('View Record'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Update Record'),
            onPressed: () {
              getPatientData();
            },
          ),
          RaisedButton(
            child: Text('Delete Record'),
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
