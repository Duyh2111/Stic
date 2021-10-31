import 'package:flutter/material.dart';
import '../../userProfile/userFrofile.dart';
import 'ChangePassword.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xA9F8F8F8),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title:
              Text('Profile Page', style: TextStyle(color: Color(0xff6B8AE7))),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.supervised_user_circle_sharp, color: Color(0xff6B8AE7)),
                        SizedBox(width: 8),
                        Text("Trang cá nhân", style: TextStyle(fontSize: 16, color: Colors.grey[800]))
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()));
                        },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.password, color: Color(0xff6B8AE7)),
                        SizedBox(width: 8),
                        Text("Đổi mật khẩu", style: TextStyle(fontSize: 16))
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Click This",
                        style:
                            TextStyle(color: Color(0xff625F6E), fontSize: 16)),
                    padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
                    splashColor: Color(0xff625F6E),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ));
  }
}
