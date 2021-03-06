import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'hpage.dart';

class AddUserScreen extends StatefulWidget {
  @override
  _AddUserScreen createState() => _AddUserScreen();
}

class _AddUserScreen extends State<AddUserScreen> {

  final congty = ['Công ty', 'Cty 75', 'Cty 76'];
  String _congty = 'Công ty';
  bool _checkboxListTile = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

  Future<String?> validatorPhone(String value2) async {
    if (value2.isEmpty) {
      return 'Mobile can\'t be empty';
    } else if (value2.isNotEmpty) {
      //bool mobileValid = RegExp(r"^(?:\+88||01)?(?:\d{10}|\d{13})$").hasMatch(value);

      bool mobileValid =
          RegExp(r'^(?:\+?88|0088)?01[13-9]\d{8}$').hasMatch(value2);
      return mobileValid ? null : "Invalid mobile";
    }
  }


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
                  "Quên mật khẩu",
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
                              hintText: "Tên người dùng",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Vui lòng nhập tên của bạn"),
                            
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
                              hintText: "Email",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Vui lòng điền email của bạn"),
                            EmailValidator(errorText: "Enter valid email id"),
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
                              hintText: "Password",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Vui lòng điền password của bạn"),
                            MinLengthValidator(6,
                                errorText:
                                    "Password should be atleast 6 characters"),
                            MaxLengthValidator(15,
                                errorText:
                                    "Password should not be greater than 15 characters")
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
                              hintText: "Số điện thoại",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Vui lòng nhập số điện thoại của bạn"),
                          ])),
                      SizedBox(height: 15),
                      TextFormField(
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12, 15, 20, 15),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xffe8e8e8), width: 1.0),
                              ),
                              filled: true,
                              hintText: "Đơn vị công tác",
                              fillColor: Color(0xffF6F6F6),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Vui lòng điền nơi bạn đang công tác"),
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
                            value: _congty,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            iconEnabledColor: Colors.black,
                            items: congty.map((congty) {
                              return DropdownMenuItem(
                                value: congty,
                                child: Text('$congty'),
                              );
                            }).toList(),
                            onChanged: (val) => setState(() => _congty = val!),
                            validator: (congty) => congty == null ? 'Chọn công ty' : null,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.grey),
                        child: CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _checkboxListTile,
                          onChanged: (value) {
                            setState(() {
                              _checkboxListTile = !_checkboxListTile;
                            });
                          },
                          subtitle: !_checkboxListTile
                              ? Text(
                                  'Tích vào ô trống để xác nhận thông tin',
                                  style: TextStyle(color: Colors.red),
                                )
                              : null,
                          title: new Text(
                            'Tôi xác nhận những thông tin trên là đúng',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ListUsers()));
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
