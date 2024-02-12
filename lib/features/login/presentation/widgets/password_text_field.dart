import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class CustomPassTextFormField extends StatefulWidget {
  CustomPassTextFormField(
      { this.label ,
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
      })
      : super(key: key);
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

  @override
  State<CustomPassTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomPassTextFormField> {

  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autoFocus!,
      focusNode: widget.focusNode,
      onChanged: widget.onChange,
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onFieldSubmitted: widget.onFieldSubmitted,
      onTap: widget.onTap,
      enabled: widget.isEnabled,
      obscureText: isPasswordVisible,
      style: TextStyle(color: enableColor, fontSize: 12.sp),
      readOnly: widget.readOnly,
      decoration: InputDecoration(
          fillColor: widget.fillColor,
          hintText: widget.hint,
          contentPadding: EdgeInsets.symmetric(horizontal: widget.contentPaddingHorizontal, vertical: widget.contentPaddingVertical),
          helperStyle: TextStyle(height: .2),
          helperText: "",
          prefixIcon: widget.prefix != null ? widget.prefix : null,
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Focus(
                descendantsAreFocusable: false,
                canRequestFocus: false,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(isPasswordVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined),
                  iconSize: 20,
                  color: textFieldColor,
                  autofocus: false,
                  focusNode: FocusNode(
                      canRequestFocus: false, descendantsAreFocusable: false),
                )),
          ),
          errorStyle: TextStyle(height: .5),
          // label: Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 0),
          //   child: Text(
          //      label,
          //   ),
          // ),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(
                color: widget.enabledBorderColor,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(color: widget.focusBorderColor )
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(color: widget.enabledBorderColor)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(color: widget.errorBorderColor)
          ) ,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(color: widget.errorBorderColor)
          )
      ),
    );
  }
}
