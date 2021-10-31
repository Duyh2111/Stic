import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'danhsachquantrac.dart';

class AddQuantrac extends StatefulWidget {
  @override
  _AddQuantrac createState() => _AddQuantrac();
}

class _AddQuantrac extends State<AddQuantrac> {
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

  bool _checkboxListTile = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
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
                  "Thêm mới trạm quan trắc",
                  style: TextStyle(
                    color: Color(0xFF0f45e7),
                    fontSize: 18,
                  ),
                ),
              ),
              Form(
                key: formkey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 20, 20, 20),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xC3E8E8E8), width: 1.0),
                              ),
                              filled: true,
                              hintText: "ID trạm",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "* Vui lòng nhập tên đơn vị"),
                          ])),
                      SizedBox(height: 15),
                      TextFormField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 20, 20, 20),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xffe8e8e8), width: 1.0),
                              ),
                              filled: true,
                              hintText: "Tên trạm",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "* Vui lòng điền phòng ban"),
                          ])),
                      SizedBox(height: 15),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 20, 20, 20),
                              // contentPadding: EdgeInsets.all(10),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xffe8e8e8), width: 1.0),
                              ),
                              filled: true,
                              hintText: "Địa chỉ",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "Vui lòng điền địa chỉ")
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
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 15, 20, 15),
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
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 20, 20, 20),
                              // contentPadding: EdgeInsets.all(10),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xffe8e8e8), width: 1.0),
                              ),
                              filled: true,
                              hintText: "Chưa kết nối",
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "Vui lòng điền địa chỉ")
                          ])),
                      SizedBox(height: 15),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Người quản trị:',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 3),
                            Text('Họ và tên:', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 3),
                            Text('Email:', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 3),
                            Text('Số điện thoại:',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 3),
                            Text(
                                'Toạ độ trên Google map: Text(Toạ độ trên Google map:',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 3),
                            Text('X = ', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 3),
                            Text('Y = ', style: TextStyle(fontSize: 16)),
                          ]),
                    ],
                  ),
                ),
              ),
              Container(
                height: 52,
                width: 223,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2.0, color: const Color(0xFF5479e7)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff6B8AE7),
                ),
                child: FlatButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Danhsachquantrac()));
                    } else {
                      print("Not Validated");
                    }
                  },
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
