import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.label,
    required this.controller,
    Key? key,
    this.validator,
    this.keyboardType,
    this.onChange,
    this.hint,
    this.isEnabled,
    this.prefix,
    this.suffix,
    this.onTap,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.width = 327,
    this.focusNode,
    required this.autoFocus,
    this.contentPaddingHorizontal = 10,
    this.contentPaddingVertical = 6,
    this.radius = 8,
    this.fillColor,
    this.enabledBorderColor = enableColor,
    this.focusBorderColor = selectedBorder,
    this.errorBorderColor = Colors.red,
    this.onSuffixPressed,
    this.onlyArabic = false,
  }) : super(key: key);
  String? label;
  String? hint;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  Function(String)? onChange;
  Widget? prefix;
  Widget? suffix;
  bool? isEnabled;
  double width;
  dynamic onTap;
  bool readOnly = false;
  Function(String)? onFieldSubmitted;
  FocusNode? focusNode;
  bool? autoFocus = false;
  double contentPaddingHorizontal;
  double contentPaddingVertical;
  double radius;
  Color? fillColor;
  Color enabledBorderColor;
  Color focusBorderColor;
  Color errorBorderColor;
  Function()? onSuffixPressed;
  bool onlyArabic;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus!,
      focusNode: focusNode,
      onChanged: onChange,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      enabled: isEnabled,
      style: TextStyle(color: enableColor, fontSize: 12.sp),
      readOnly: readOnly,
      inputFormatters: !onlyArabic
          ? []
          : [
              FilteringTextInputFormatter.allow(RegExp(r'^[\u0600-\u06FF\s]+$'))
            ],
      // Arabic characters and spaces

      decoration: InputDecoration(
          fillColor: fillColor,
          hintText: hint,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentPaddingHorizontal,
              vertical: contentPaddingVertical),
          helperStyle: TextStyle(height: .2),
          helperText: "",
          prefixIcon: prefix != null ? prefix : null,
          suffixIcon: GestureDetector(
              onTap: onSuffixPressed,
              child: Container(width: 32.h, height: 32.w, child: suffix)),
          errorStyle: TextStyle(height: .5),
          // label: Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 0),
          //   child: Text(
          //      label,
          //   ),
          // ),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(
                color: enabledBorderColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: focusBorderColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: enabledBorderColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: errorBorderColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: errorBorderColor))),
    );
  }
}
