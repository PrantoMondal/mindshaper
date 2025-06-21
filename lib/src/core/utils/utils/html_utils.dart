// import 'package:flutter/material.dart';
// import 'package:html/dom.dart' as dom;
// import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// import 'package:kefas_user/src/core/constants/app_colors.dart';
// import 'package:kefas_user/src/core/constants/app_textstyles.dart';
//
// abstract class HtmlUtils {
//   static Widget buildTable(dom.Element tableElement) {
//     List<TableRow> rows = [];
//
//     for (var rowElement in tableElement.querySelectorAll('tr')) {
//       List<Widget> cells = [];
//
//       for (var cellElement in rowElement.children) {
//         bool isHeader = cellElement.localName == 'th';
//         cells.add(
//           Container(
//             padding: EdgeInsets.all(8),
//             color: isHeader ? Colors.grey.shade300 : Colors.white,
//             child: HtmlWidget(cellElement.innerHtml),
//           ),
//         );
//       }
//
//       rows.add(TableRow(children: cells));
//     }
//
//     return Table(
//       border: TableBorder.all(color: Colors.grey),
//       defaultColumnWidth: FlexColumnWidth(),
//       children: rows,
//     );
//   }
//
//   static Widget buildBlockquote(dom.Element blockquoteElement) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(8),
//         border: Border(left: BorderSide(color: Colors.grey.shade500, width: 4)),
//       ),
//       child: HtmlWidget(
//         blockquoteElement.innerHtml,
//         textStyle: TextStyle(
//           fontStyle: FontStyle.italic,
//           color: Colors.black87,
//         ),
//       ),
//     );
//   }
//
//   static Widget buildH2(dom.Element h2) {
//     return Text(
//       h2.innerHtml,
//       style: kSyne600W16S.copyWith(
//         color: AppColors.slate900,
//       ),
//     );
//   }
// }
