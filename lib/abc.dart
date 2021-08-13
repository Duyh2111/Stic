// import 'dart:convert';
// import 'package:intl/intl.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// void main() {
//   runApp(MyApp());
// }

// /// The application that contains datagrid on it.
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Syncfusion DataGrid Demo',
//       theme:
//           ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
//       home: JsonDataGrid(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class JsonDataGrid extends StatefulWidget {
//   @override
//   _JsonDataGridState createState() => _JsonDataGridState();
// }

// class _JsonDataGridState extends State<JsonDataGrid> {
//   late _JsonDataGridSource jsonDataGridSource;
//   int _value = 1;
//   List<_Product> productlist = [];

//   Future generateProductList() async {
//     var response = await http.get(Uri.parse(
//         'https://ej2services.syncfusion.com/production/web-services/api/Orders'));
//     var list = json.decode(response.body).cast<Map<String, dynamic>>();
//     productlist =
//         await list.map<_Product>((json) => _Product.fromJson(json)).toList();
//     jsonDataGridSource = _JsonDataGridSource(productlist);
//     return productlist;
//   }

//   List<GridColumn> getColumns() {
//     List<GridColumn> columns;
//     columns = ([
//       GridColumn(
//         columnName: 'orderID',
//         width: 70,
//         label: Container(
//           padding: EdgeInsets.all(8),
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'Order ID',
//             overflow: TextOverflow.clip,
//             softWrap: true,
//           ),
//         ),
//       ),
//       GridColumn(
//         columnName: 'customerID',
//         width: 95,
//         label: Container(
//           padding: EdgeInsets.all(8),
//           alignment: Alignment.centerRight,
//           child: Text(
//             'Customer ID',
//             overflow: TextOverflow.clip,
//             softWrap: true,
//           ),
//         ),
//       ),
//       GridColumn(
//         columnName: 'employeeID',
//         width: 95,
//         label: Container(
//           padding: EdgeInsets.all(8),
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'Employee ID',
//             overflow: TextOverflow.clip,
//             softWrap: true,
//           ),
//         ),
//       ),
//       GridColumn(
//         columnName: 'orderDate',
//         width: 100,
//         label: Container(
//           padding: EdgeInsets.all(8),
//           alignment: Alignment.centerRight,
//           child: Text(
//             'Order Date',
//             overflow: TextOverflow.clip,
//             softWrap: true,
//           ),
//         ),
//       ),
//       GridColumn(
//         columnName: 'freight',
//         width: 70,
//         label: Container(
//           padding: EdgeInsets.all(8),
//           alignment: Alignment.centerLeft,
//           child: Text('Freight'),
//         ),
//       )
//     ]);
//     return columns;
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child: Center(
//               child: Column(
//         children: [
//           AppBar(
//             title: Text(
//               "Đăng nhập",
//               style: TextStyle(
//                 color: Color(0xFF0f45e7),
//                 fontSize: 18,
//               ),
//             ),
//           ),
//           // Container(
//           //   child: DropdownButton(
//           //       value: _value,
//           //       items: [
//           //         DropdownMenuItem(
//           //           child: Text("First Item"),
//           //           value: 1,
//           //         ),
//           //         DropdownMenuItem(
//           //           child: Text("Second Item"),
//           //           value: 2,
//           //         )
//           //       ],
//           //       onChanged: (int value) {
//           //         setState(() {
//           //           _value = value;
//           //         });
//           //       },
//           //       hint: Text("Select item")),
//           // ),
//           // Container(
//           //   child: DropdownButton(
//           //       value: _value,
//           //       items: [
//           //         DropdownMenuItem(
//           //           child: Text("First Item"),
//           //           value: 1,
//           //         ),
//           //         DropdownMenuItem(
//           //           child: Text("Second Item"),
//           //           value: 2,
//           //         )
//           //       ],
//           //       onChanged: (int value) {
//           //         setState(() {
//           //           _value = value;
//           //         });
//           //       },
//           //       hint: Text("Select item")),
//           // ),
//           FutureBuilder(
//               future: generateProductList(),
//               builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//                 return snapshot.hasData
//                     ? SfDataGrid(
//                         source: jsonDataGridSource, columns: getColumns())
//                     : Center(
//                         child: CircularProgressIndicator(
//                           strokeWidth: 3,
//                         ),
//                       );
//               })
//         ],
//       ))),
//       // child: FutureBuilder(
//       //     future: generateProductList(),
//       //     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//       //       return snapshot.hasData
//       //           ? SfDataGrid(
//       //               source: jsonDataGridSource, columns: getColumns())
//       //           : Center(
//       //               child: CircularProgressIndicator(
//       //                 strokeWidth: 3,
//       //               ),
//       //             );
//       //     })),
//     );
//   }
// }

// class _Product {
//   factory _Product.fromJson(Map<String, dynamic> json) {
//     return _Product(
//         orderID: json['OrderID'],
//         customerID: json['CustomerID'],
//         employeeID: json['EmployeeID'],
//         orderDate: DateTime.parse(json['OrderDate']),
//         shippedDate: DateTime.parse(json['ShippedDate']),
//         freight: json['Freight'],
//         shipName: json['ShipName'],
//         shipAddress: json['ShipAddress'],
//         shipCity: json['ShipCity'],
//         shipPostelCode: json['ShipPostelCode'],
//         shipCountry: json['ShipCountry']);
//   }

//   _Product(
//       {required this.orderID,
//       required this.customerID,
//       required this.employeeID,
//       required this.orderDate,
//       required this.shippedDate,
//       required this.freight,
//       required this.shipName,
//       required this.shipAddress,
//       required this.shipCity,
//       required this.shipPostelCode,
//       required this.shipCountry});
//   int orderID;
//   String customerID;
//   int employeeID;
//   DateTime orderDate;
//   DateTime shippedDate;
//   double freight;
//   String shipName;
//   String shipAddress;
//   String shipCity;
//   int shipPostelCode;
//   String shipCountry;
// }

// class _JsonDataGridSource extends DataGridSource {
//   _JsonDataGridSource(this.productlist) {
//     buildDataGridRow();
//   }

//   List<DataGridRow> dataGridRows = [];
//   List<_Product> productlist = [];

//   void buildDataGridRow() {
//     dataGridRows = productlist.map<DataGridRow>((dataGridRow) {
//       return DataGridRow(cells: [
//         DataGridCell<int>(columnName: 'orderID', value: dataGridRow.orderID),
//         DataGridCell<String>(
//             columnName: 'customerID', value: dataGridRow.customerID),
//         DataGridCell<int>(
//             columnName: 'employeeID', value: dataGridRow.employeeID),
//         DataGridCell<DateTime>(
//             columnName: 'orderDate', value: dataGridRow.orderDate),
//         DataGridCell<double>(columnName: 'freight', value: dataGridRow.freight),
//       ]);
//     }).toList(growable: false);
//   }

//   @override
//   List<DataGridRow> get rows => dataGridRows;

//   @override
//   DataGridRowAdapter buildRow(DataGridRow row) {
//     return DataGridRowAdapter(cells: [
//       Container(
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.all(8.0),
//         child: Text(
//           row.getCells()[0].value.toString(),
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
//       Container(
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.all(8.0),
//         child: Text(
//           row.getCells()[1].value,
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
//       Container(
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.all(8.0),
//         child: Text(
//           row.getCells()[2].value.toString(),
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
//       Container(
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.all(8.0),
//         child: Text(
//           DateFormat('MM/dd/yyyy').format(row.getCells()[3].value).toString(),
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
//       Container(
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.all(8.0),
//         child: Text(
//           row.getCells()[4].value.toString(),
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),
      
//     ]);
//   }
// }



// // import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// // import 'package:extended_navbar_scaffold/extended_navbar_scaffold.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: ThemeData(
// //         // fontFamily: 'K2D',
// //         pageTransitionsTheme: PageTransitionsTheme(builders: {
// //           TargetPlatform.android: CupertinoPageTransitionsBuilder(),
// //           TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
// //         }),
// //         // primaryColor: Kcolors.primary,
// //         // primaryColorDark: Kcolors.primaryDark,
// //         // primarySwatch: Colors.deepOrange,
// //         // primaryColor: Colors.black,
// //         // brightness: Brightness.dark,
// //         // accentColor: Colors.black,
// //         // canvasColor: Colors.white12,

// //         primaryColor: Colors.white,
// //         brightness: Brightness.light,
// //         accentColor: Colors.white,
// //       ),
// //       home: ExtendedNavBar(),
// //     );
// //   }
// // }

// // class ExtendedNavBar extends StatefulWidget {
// //   ExtendedNavBar({Key key}) : super(key: key);

// //   _ExtendedNavBarState createState() => _ExtendedNavBarState();
// // }

// // class _ExtendedNavBarState extends State<ExtendedNavBar> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ExtendedNavigationBarScaffold(
// //       body: Container(
// //         color: Colors.deepOrange,
// //       ),
// //       elevation: 0,
// //       floatingAppBar: true,
// //       appBar: AppBar(
// //         shape: kAppbarShape,
// //         leading: IconButton(
// //           icon: Icon(
// //             EvaIcons.person,
// //             color: Colors.black,
// //           ),
// //           onPressed: () {},
// //         ),
// //         title: Text(
// //           'Extended Scaffold Example',
// //           style: TextStyle(color: Colors.black),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.white,
// //       ),
// //       // navBarColor: Colors.white,
// //       // navBarIconColor: Colors.black,
// //       moreButtons: [
// //         MoreButtonModel(
// //           icon: MaterialCommunityIcons.wallet,
// //           label: 'Wallet',
// //           onTap: () {},
// //         ),
// //         MoreButtonModel(
// //           icon: MaterialCommunityIcons.parking,
// //           label: 'My Bookings',
// //           onTap: () {},
// //         ),
// //         MoreButtonModel(
// //           icon: MaterialCommunityIcons.car_multiple,
// //           label: 'My Cars',
// //           onTap: () {},
// //         ),
// //         MoreButtonModel(
// //           icon: FontAwesome.book,
// //           label: 'Transactions',
// //           onTap: () {},
// //         ),
// //         MoreButtonModel(
// //           icon: MaterialCommunityIcons.home_map_marker,
// //           label: 'Offer Parking',
// //           onTap: () {},
// //         ),
// //         MoreButtonModel(
// //           icon: FontAwesome5Regular.user_circle,
// //           label: 'Profile',
// //           onTap: () {},
// //         ),
// //         null,
// //         MoreButtonModel(
// //           icon: EvaIcons.settings,
// //           label: 'Settings',
// //           onTap: () {},
// //         ),
// //         null,
// //       ],
// //       searchWidget: Container(
// //         height: 50,
// //         color: Colors.redAccent,
// //       ),
// //       // onTap: (button) {},
// //       // currentBottomBarCenterPercent: (currentBottomBarParallexPercent) {},
// //       // currentBottomBarMorePercent: (currentBottomBarMorePercent) {},
// //       // currentBottomBarSearchPercent: (currentBottomBarSearchPercent) {},
// //       parallexCardPageTransformer: PageTransformer(
// //         pageViewBuilder: (context, visibilityResolver) {
// //           return PageView.builder(
// //             physics: AlwaysScrollableScrollPhysics(),
// //             pageSnapping: true,
// //             controller: PageController(viewportFraction: 0.9),
// //             itemCount: parallaxCardItemsList.length,
// //             itemBuilder: (context, index) {
// //               final item = parallaxCardItemsList[index];
// //               final pageVisibility =
// //                   visibilityResolver.resolvePageVisibility(index);
// //               return ParallaxCardsWidget(
// //                 item: item,
// //                 pageVisibility: pageVisibility,
// //               );
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   final parallaxCardItemsList = <ParallaxCardItem>[
// //     ParallaxCardItem(
// //         title: 'Some Random Route 1',
// //         body: 'Place 1',
// //         background: Container(
// //           color: Colors.orange,
// //         )),
// //     ParallaxCardItem(
// //         title: 'Some Random Route 2',
// //         body: 'Place 2',
// //         background: Container(
// //           color: Colors.redAccent,
// //         )),
// //     ParallaxCardItem(
// //         title: 'Some Random Route 3',
// //         body: 'Place 1',
// //         background: Container(
// //           color: Colors.blue,
// //         )),
// //   ];
// // }