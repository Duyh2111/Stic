import 'package:flutter/material.dart';
import 'addquantrac.dart';
import 'chitiet.dart';

class Danhsachquantrac extends StatefulWidget {
  @override
  _Danhsachquantrac createState() => _Danhsachquantrac();
}

class _Danhsachquantrac extends State<Danhsachquantrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Danh sách trạm quan trắc",
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
                // Container(
                //   margin: EdgeInsets.only(top: 10),
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1.0, color: Colors.black26),
                //     color: Colors.white,
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   child: Row(
                //     children: <Widget>[
                //       Expanded(
                //         child: TextField(
                //           decoration: InputDecoration(
                //             hintText: "Tìm kiếm",
                //             hintStyle: TextStyle(
                //               color: Colors.black.withAlpha(120),
                //             ),
                //             border: InputBorder.none,
                //           ),
                //           onChanged: (String keyword) {},
                //         ),
                //       ),
                //       Icon(
                //         Icons.search,
                //         color: Colors.black.withAlpha(120),
                //       )
                //     ],
                //   ),
                // ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddQuantrac()));
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
                        "Thêm mới trạm quan trắc",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff6B8AE7),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('ID trạm')),
                      DataColumn(label: Text('Tên trạm')),
                      DataColumn(label: Text('Địa chỉ')),
                      DataColumn(label: Text('Đơn vị quản lý')),
                      DataColumn(label: Text('Trạng thái')),
                      DataColumn(label: Text('Chi tiết')),
                      DataColumn(label: Text('Xoá')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('42jh21jh2j3k12')),
                        DataCell(Text('Cầu Rồng')),
                        DataCell(Text(
                          'Sơn Trà, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42jg231g2hj3g12j')),
                        DataCell(Text('Cầu Trần Thị Lý')),
                        DataCell(Text(
                          'Hải Châu, Đà Nẵng',
                        )),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đang kết nối',
                            style: TextStyle(color: Colors.green))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chitietquantrac()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
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
