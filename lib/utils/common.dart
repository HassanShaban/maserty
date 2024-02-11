import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;
import 'package:flutter/cupertino.dart';

bool isValidIP(String ip) {
  RegExp ipExp = RegExp(
      r"^(?!0)(?!.*\.$)((1?\d?\d|25[0-5]|2[0-4]\d)(\.|$)){4}$",
      caseSensitive: false,
      multiLine: false);
  if (ipExp.hasMatch(ip)) {
    return true;
  }
  return false;
}

double incrementEditText(TextEditingController amountTxt) {
  double val = double.parse(
          amountTxt.text.isEmpty || double.parse(amountTxt.text) < 0
              ? '0'
              : amountTxt.text.toString()) +
      1;
  return val;
}

double decrementEditText(TextEditingController amountTxt) {
  double val = double.parse(
          amountTxt.text.isEmpty || double.parse(amountTxt.text) <= 0
              ? '1'
              : amountTxt.text.toString()) -
      1;
  return val;
}

String generateMd5(String input) {
  var md5 = crypto.md5;
  return md5.convert(utf8.encode(input)).toString();
}

String decryptMD5(String input) {
  var md5 = crypto.md5;
  return md5.convert(utf8.encode(input)).toString();
}

Widget setArrow({required TextDirection textDirection, Color? color}) {
  Image image;

  // en
  if (textDirection == TextDirection.ltr) {
    image = Image(
      image: const AssetImage('assets/icons/en_arrow.png'),
      color: color,
    );
    return image;
  }
  // ar
  return image = Image(
    image: const AssetImage('assets/icons/back_arrow.png'),
    color: color,
  );
}

void printObject(Object object) {
  // Encode your object and then decode your object to Map variable
  Map jsonMapped = json.decode(json.encode(object));
  // Using JsonEncoder for spacing
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  // encode it to string
  String prettyPrint = encoder.convert(jsonMapped);
  // print or debugPrint your object
  debugPrint(prettyPrint);
}

// String toQuoma(List<dynamic> list , dynamic property) {
//   String result = "";
//   StringBuffer sb = new StringBuffer();
//
//   if(list is Products){
//     list.forEach((row) {
//       sbrite(row. + ",");
//     });
//   }
//
//   result  = result.substring(0, result.length - 1);
//
//   return result;
// }
