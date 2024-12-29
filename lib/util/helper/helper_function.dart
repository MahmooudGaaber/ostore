import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OstoreHelperFunction {
  //Get color from string
  static Color? getColor(String color) {
    if (color == ' Green') {
      return Colors.green;
    } else if (color == ' Red') {
      return Colors.red;
    } else if (color == ' Blue') {
      return Colors.blue;
    } else if (color == ' Yellow') {
      return Colors.yellow;
    } else if (color == ' Orange') {
      return Colors.orange;
    } else if (color == ' Purple') {
      return Colors.purple;
    } else if (color == ' Pink') {
      return Colors.pink;
    } else if (color == ' Brown') {
      return Colors.brown;
    } else if (color == ' Gray') {
      return Colors.grey;
    } else if (color == ' Black') {
      return Colors.black;
    } else if (color == ' White') {
      return Colors.white;
    } else if (color == ' Teal') {
      return Colors.teal;
    } else if (color == ' Indigo') {
      return Colors.indigo;
    }
    return null;
  }

  //snackbar
  static void showSnackbar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  //show alert dialog
  static void showAlertDialog(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  //navigate to page
  static void navigateToPage(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  //truncat string
  static String truncateString(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength)}...';
  }

  //dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  //screen size
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  //screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  //get formatted date
  static String formatDate(DateTime date, {String format = 'dd MM yyyy'}) {
    return DateFormat(format).format(date);
  }

  //remove duplicate items from list
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  //wrap widget
  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    final wrappedWidgets = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedWidgets.add(Row(children: rowChildren));
    }
    return wrappedWidgets;
  }
}
