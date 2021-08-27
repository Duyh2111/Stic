import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreen createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  late String groupValue;
  final congty = ['Công ty', 'Cty 75', 'Cty 76'];
  String _congty = 'Công ty';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AppBar(
                    // leading: IconButton(
                    //   icon: Icon(Icons.arrow_back, color: Colors.black),
                    //   onPressed: () => Navigator.of(context).pop(),
                    // ),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    centerTitle: true,
                    title: Text(
                      "Chi tiết người dùng",
                      style: TextStyle(
                        color: Color(0xFF0f45e7),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(12, 15, 20, 15),
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        filled: true,
                        hintText: "Tên người dùng",
                        fillColor: Color(0xffF6F6F6),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(12, 15, 20, 15),
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        filled: true,
                        hintText: "Email",
                        fillColor: Color(0xffF6F6F6),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(12, 15, 20, 15),
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        filled: true,
                        hintText: "Số điện thoại",
                        fillColor: Color(0xffF6F6F6),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(12, 15, 20, 15),
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        filled: true,
                        hintText: "Đơn vị công tác",
                        fillColor: Color(0xffF6F6F6),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                  SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(color: Colors.blueGrey)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 15, 20, 15),
                            enabledBorder: InputBorder.none,
                          ),
                          value: _congty,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          iconEnabledColor: Colors.black,
                          items: congty.map((congty) {
                            return DropdownMenuItem(
                              value: congty,
                              child: Text('$congty'),
                            );
                          }).toList(),
                          onChanged: (val) =>
                              setState(() => _congty = val!),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 153,
                        height: 52,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: const Color(0xFF5479e7)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
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
                          child: Text('Quay lại',style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                        ),
                      ),
                      Container(
                        width: 153,
                        height: 52,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: const Color(0xFF5479e7)),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Hoàn tất",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5479e7),
                            ),
                          ),
                        ),
                      ),
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
