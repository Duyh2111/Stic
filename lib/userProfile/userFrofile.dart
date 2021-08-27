import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
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
                  "Hồ sơ",
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
                    "Username",
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE8E8E8), width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: 'Duyh21_',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Name",
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE8E8E8), width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: 'Hoangd Duy',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Email",
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE8E8E8), width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: 'Duyh21@gmail.com',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Công ty",
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE8E8E8), width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: 'STIC & BKG',
                      ),
                    ),
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
