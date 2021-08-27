import 'package:flutter/material.dart';
import '../Signin/Login.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ResetPassword extends StatelessWidget {
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
                    "Cập nhật mật khẩu",
                    style: TextStyle(
                      color: Color(0xFF0f45e7),
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 60),
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
                SizedBox(height: 34),
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
                SizedBox(height: 34),
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
                          labelText: 'Nhập lại mật khẩu',
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
                SizedBox(height: 77),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MyHomePage()));
                    },
                    child: Text(
                      'Tiếp theo',
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
