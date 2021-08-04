import 'package:flutter/material.dart';
import 'package:untitled1/Signin/Login.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
  bool _checkbox = false;
  bool _checkboxListTile = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/images/Background.jpg").image,
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Center(
            child: Column(
              children: [
                AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  title: Text(
                    "Đăng ký",
                    style: TextStyle(
                      color: Color(0xFF0f45e7),
                      // color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(top: 130.0, bottom: 15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Tên",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Mật khẩu",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Xác nhận mật khẩu",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                ),
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.grey),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'Tôi xác nhận tất cả thông tin trên là đúng',
                      style: TextStyle(
                        color: Color(0XFF625F6E),
                      ),
                    ),
                    value: _checkboxListTile,
                    tileColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        _checkboxListTile = !_checkboxListTile;
                      });
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Container(
                    width: 223,
                    height: 52,
                    margin: const EdgeInsets.only(top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: const Color(0xFF5479e7)),
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff6B8AE7),
                    ),
                    child: Center(
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
