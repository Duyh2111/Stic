import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidget createState() => _MyWidget();
}

class _MyWidget extends State<MyWidget> {
  late String _chosenValuee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: dTable());
  }
}

Widget dTable() {
  var data = <Data>[
    Data(
      "varun",
      "Hduy@gmail.com",
      "20",
      "2001",
    ),
    Data(
      "varun1",
      "Hduy@gmail.com",
      "21",
      "2000",
    ),
    Data(
      "varun2",
      "Hduy@gmail.com",
      "23",
      "1998",
    ),
    Data(
      "varun3",
      "Hduy@gmail.com",
      "26",
      "1995",
    ),
    Data(
      "varun",
      "Hduy@gmail.com",
      "20",
      "2001",
    ),
    Data(
      "varun1",
      "Hduy@gmail.com",
      "21",
      "2000",
    ),
    Data(
      "varun2",
      "Hduy@gmail.com",
      "23",
      "1998",
    ),
    Data(
      "varun3",
      "Hduy@gmail.com",
      "26",
      "1995",
    ),
    Data(
      "varun",
      "Hduy@gmail.com",
      "20",
      "2001",
    ),
    Data(
      "varun1",
      "Hduy@gmail.com",
      "21",
      "2000",
    ),
    Data(
      "varun2",
      "Hduy@gmail.com",
      "23",
      "1998",
    ),
    Data(
      "varun3",
      "Hduy@gmail.com",
      "26",
      "1995",
    ),
    Data(
      "varun",
      "Hduy@gmail.com",
      "20",
      "2001",
    ),
    Data(
      "varun1",
      "Hduy@gmail.com",
      "21",
      "2000",
    ),
    Data(
      "varun2",
      "Hduy@gmail.com",
      "23",
      "1998",
    ),
    Data(
      "varun3",
      "Hduy@gmail.com",
      "26",
      "1995",
    ),
  ];
  return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Danh sách người dùng",
            style: TextStyle(color: Color(0xff6B8AE7))),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black26),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tìm kiếm",
                          hintStyle: TextStyle(
                            color: Colors.black.withAlpha(120),
                          ),
                          border: InputBorder.none,
                        ),
                        onChanged: (String keyword) {},
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black.withAlpha(120),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => AddUserScreen()));
                },
                child: Container(
                  width: 190,
                  height: 48,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFF5479e7)),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Thêm mới người dùng",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff6B8AE7),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(color: Colors.blueGrey)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: DropdownButton<String>(
                        focusColor: Colors.red,
                        // value: _chosenValuee,
                        underline:
                            DropdownButtonHideUnderline(child: Container()),
                        style: TextStyle(color: Colors.red),
                        iconEnabledColor: Colors.black,
                        items: <String>[
                          'Admin',
                          'Admin1',
                          'Admin2',
                          'Admin3',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          "Vị trí",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        // onChanged: (String value) {
                        //   setState(() {
                        //     _chosenValue = value;
                        //   });
                        // },
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(color: Colors.blueGrey)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        // value: _chosenValuee,
                        underline:
                            DropdownButtonHideUnderline(child: Container()),

                        //elevation: 5,
                        style: TextStyle(color: Colors.white),
                        iconEnabledColor: Colors.black,
                        items: <String>[
                          'Cty 75',
                          'Cty 76',
                          'Cty 77',
                          'Cty 78',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          "Công ty",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        // onChanged: (String value) {
                        //   setState(() {
                        //     _chosenValuee = value;
                        //   });
                        // },
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text("Tên"),
                    ),
                    DataColumn(
                      label: Text("Email"),
                    ),
                    DataColumn(
                      label: Text("Tuổi"),
                    ),
                    DataColumn(
                      label: Text("Năm sinh"),
                    ),
                    DataColumn(label: Text("Chi tiết"))
                  ],
                  rows: data.map((data) {
                    return DataRow(cells: [
                      DataCell(Text(data.name)),
                      DataCell(Text(data.email)),
                      DataCell(Text(data.age)),
                      DataCell(Text(data.year)),
                      DataCell(
                        IconButton(
                          icon: Icon(Icons.details,
                              color: Colors.greenAccent[700], size: 25),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           DetailScreen()),
                            // );
                          },
                        ),
                      )
                    ]);
                  }).toList(),
                ),
              ),
            ],
          )));
}

class Data {
  String name;
  String email;
  String age;
  String year;
  Data(this.name, this.email, this.age, this.year);
}
