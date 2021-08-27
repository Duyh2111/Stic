import 'package:flutter/material.dart';
import 'Add.dart';
import 'Detail.dart';

class ListCompany extends StatefulWidget {
  @override
  _ListCompany createState() => _ListCompany();
}

class _ListCompany extends State<ListCompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Danh sách đơn vị",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddCompany()));
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
                        "Thêm mới đơn vị",
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
                      DataColumn(label: Text('Id')),
                      DataColumn(label: Text('Tên đơn vị')),
                      DataColumn(label: Text('Phòng/ban')),
                      DataColumn(label: Text('Địa chỉ')),
                      DataColumn(label: Text('Quận/Huyện')),
                      DataColumn(label: Text('Tỉnh/TP')),
                      DataColumn(label: Text('Chi tiết')),
                      DataColumn(label: Text('Xoá')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('42')),
                        DataCell(Text('Stic')),
                        DataCell(Text('R & D')),
                        DataCell(Text('123 Nguyễn Lương Bằng')),
                        DataCell(Text('Liên Chiểu')),
                        DataCell(Text('Đà Nẵng')),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            icon: Icon(Icons.details,
                                color: Colors.greenAccent[700]))),
                        DataCell(IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
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
