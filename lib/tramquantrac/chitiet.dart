import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class Chitietquantrac extends StatefulWidget {
  @override
  _Chitietquantrac createState() => _Chitietquantrac();
}

class _Chitietquantrac extends State<Chitietquantrac> {
  late String groupValue;
  final quan = [
    'Đơn vị quản lý',
    'Sơn Trà',
    'Liên Chiểu',
    'Cẩm Lệ',
    'Ngũ Hành Sơn',
    'Thanh Khê',
    'Hải Châu',
    'Hoà Vang'
  ];
  String _quan = 'Đơn vị quản lý';

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
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    centerTitle: true,
                    title: Text(
                      "Chi tiết trạm quan trắc",
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
                          contentPadding: EdgeInsets.fromLTRB(12, 20, 20, 20),
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color(0xC3E8E8E8), width: 1.0),
                          ),
                          filled: true,
                          hintText: "hj23g1h2j3g1h2",
                          fillColor: Color(0xffF6F6F6),
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16)),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "* Vui lòng nhập tên đơn vị"),
                      ])),
                  SizedBox(height: 15),
                  TextFormField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 20, 20, 20),
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color(0xffe8e8e8), width: 1.0),
                          ),
                          filled: true,
                          hintText: "Cầu Rồng",
                          fillColor: Color(0xffF6F6F6),
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16)),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "* Vui lòng điền phòng ban"),
                      ])),
                  SizedBox(height: 15),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 20, 20, 20),
                          // contentPadding: EdgeInsets.all(10),
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color(0xffe8e8e8), width: 1.0),
                          ),
                          filled: true,
                          hintText: "Sơn Trà, Đà Nẵng",
                          fillColor: Color(0xffF6F6F6),
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16)),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Vui lòng điền địa chỉ")
                      ])),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(color: Color(0xffe8e8e8))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12, 15, 20, 15),
                          enabledBorder: InputBorder.none,
                        ),
                        value: _quan,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        iconEnabledColor: Colors.black,
                        items: quan.map((quan) {
                          return DropdownMenuItem(
                            value: quan,
                            child: Text('$quan'),
                          );
                        }).toList(),
                        onChanged: (val) => setState(() => _quan = val!),
                        validator: (quan) =>
                            quan == null ? 'Chọn công ty' : null,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 20, 20, 20),
                          // contentPadding: EdgeInsets.all(10),
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color(0xffe8e8e8), width: 1.0),
                          ),
                          filled: true,
                          hintText: "Đang kết nối",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Vui lòng điền địa chỉ")
                      ])),
                  SizedBox(height: 15),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Người quản trị:', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 3),
                        Text('Họ và tên:', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 3),
                        Text('Email:', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 3),
                        Text('Số điện thoại:', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 3),
                        Text(
                            'Toạ độ trên Google map: Text(Toạ độ trên Google map:',
                            style: TextStyle(fontSize: 16)),
                        SizedBox(height: 3),
                        Text('X = ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 3),
                        Text('Y = ', style: TextStyle(fontSize: 16)),
                      ]),
                  SizedBox(
                    height: 20,
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
                          child: Text(
                            'Chỉnh sửa',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
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
                            "Lưu",
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
