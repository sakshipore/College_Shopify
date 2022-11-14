import 'package:college_shopify/constants.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormText extends StatelessWidget {
  final String text;
  TextEditingController controller = TextEditingController();
  FormText({super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: MyTextStyle.normalLatoFont.copyWith(
            fontSize: 14.sp,
            color: Color(0xff9B9B9B),
            fontWeight: FontWeight.w400,
          ),
          labelText: text,
          labelStyle: MyTextStyle.normalLatoFont.copyWith(
            fontSize: 11.sp,
            color: Color(0xff9B9B9B),
            fontWeight: FontWeight.w300,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter " + text;
          }
          return null;
        });
  }
}
