import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'AddUser.dart';

class ListUsers extends StatefulWidget {
  @override
  _MyListUsers createState() => _MyListUsers();
}

class _MyListUsers extends State<ListUsers> {
  final congty = ['Công ty', 'Cty 75', 'Cty 76'];
  String _congty = 'Công ty';
  final phanquyen = ['Phân quyền', 'Admin', 'User'];
  String _phanquyen = 'Phân quyền';
  @override
  Widget build(BuildContext context) {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddUserScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: const Color(0xFF5479e7)),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                      child: Text(
                        "Tạo người dùng",
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
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(color: Colors.blueGrey)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                          ),
                          value: _phanquyen,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          iconEnabledColor: Colors.black,
                          items: phanquyen.map((sugar) {
                            return DropdownMenuItem(
                              value: sugar,
                              child: Text('$sugar'),
                            );
                          }).toList(),
                          onChanged: (val) =>
                              setState(() => _phanquyen = val!),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(color: Colors.blueGrey)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
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
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Id')),
                      DataColumn(label: Text('Tên người dùng')),
                      DataColumn(label: Text('Email')),
                      DataColumn(label: Text('Số điện thoại')),
                      DataColumn(label: Text('Chi tiết')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Hoàng Duy')),
                        DataCell(Text('Hduy@gmail.com')),
                        DataCell(Text('0123456789')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                      ]),
                    ],
                  ),
                ),
              ],
            )));
  }
}

class Data {
  String name;
  String email;
  String age;
  String year;
  Data(this.name, this.email, this.age, this.year);
}
