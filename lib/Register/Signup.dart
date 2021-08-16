import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled1/Signin/Login.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
  bool _checkbox = false;
  bool _checkboxListTile = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/images/Backgr.png").image,
              fit: BoxFit.fill),
        ),
        child: Container(
          child: Form(
            key: formkey,
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
                SizedBox(height: 32),
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
                          labelText: 'Tên',
                          hintText: 'Enter valid email id as abc@gmail.com'),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                        EmailValidator(errorText: "Enter valid email id"),
                      ])),
                ),
                SizedBox(height: 16),
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
                          labelText: 'Email',
                          hintText: 'Enter valid email id as abc@gmail.com'),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                        EmailValidator(errorText: "Enter valid email id"),
                      ])),
                ),
                SizedBox(height: 16),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE8E8E8), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: const OutlineInputBorder(),
                          labelText: 'Mật khẩu',
                          hintText: 'Enter secure password'),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                        MinLengthValidator(6,
                            errorText:
                                "Password should be atleast 6 characters"),
                        MaxLengthValidator(15,
                            errorText:
                                "Password should not be greater than 15 characters")
                      ])
                      //validatePassword,        //Function to check validation
                      ),
                ),
                SizedBox(height: 16),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE8E8E8), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: const OutlineInputBorder(),
                          labelText: 'Xác nhận mật khẩu',
                          hintText: 'Enter secure password'),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                        MinLengthValidator(6,
                            errorText:
                                "Password should be atleast 6 characters"),
                        MaxLengthValidator(15,
                            errorText:
                                "Password should not be greater than 15 characters")
                      ])
                      //validatePassword,        //Function to check validation
                      ),
                ),
                SizedBox(height: 18),
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.grey),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'Tôi xác nhận tất cả thông tin trên là đúng.',
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
                SizedBox(height: 25),
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
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (_) => HomePage()));
                      } else {
                        print("Not Validated");
                      }
                    },
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
