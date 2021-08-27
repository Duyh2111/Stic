import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "Đổi mật khẩu",
              style: TextStyle(
                color: Color(0xff6B8AE7),
                fontSize: 18,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(-10.0),
                  bottomRight: Radius.circular(-10.0),
                ),
              ),
              child: Container(
                // margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Alice James",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Card(
                      //   margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      //   clipBehavior: Clip.antiAlias,
                      //   color: Colors.white,
                      //   elevation: 5.0,
                      // )
                    ],
                  ),
                ),
              )),
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    "Mật khẩu cũ",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF6F6F6)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE8E8E8), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: const OutlineInputBorder(),
                          hintText: 'Nhập mật khẩu'),
                          
                          

                      //validatePassword,        //Function to check validation
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Mật khẩu mới",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF6F6F6)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE8E8E8), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: const OutlineInputBorder(),
                          hintText: 'Nhập mật khẩu'),

                      //validatePassword,        //Function to check validation
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Nhập lại mật khẩu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF6F6F6)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE8E8E8), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: const OutlineInputBorder(),
                          hintText: 'Nhập lại mật khẩu'),

                      //validatePassword,        //Function to check validation
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff6B8AE7),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 13, horizontal: 15),
                                  child: Text(
                                    "Quay lại",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 13, horizontal: 15),
                                  child: Text(
                                    "Tiếp tục",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff6B8AE7),
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
