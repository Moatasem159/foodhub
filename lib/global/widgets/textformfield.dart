import 'dart:core';


import 'package:flutter/material.dart';
import 'package:foodhub/global/colors.dart';
import 'package:google_fonts/google_fonts.dart';



class MainTextFormField extends StatelessWidget {

  final BuildContext context;
  final String hintText;
  final String textFormFieldName;
  final IconData ?prefixIcon;
  final TextEditingController controller;
  final String? Function(String ?value)? validator;
  final bool obscure;
  final Widget? suffixIcon;
  final Color focusedErrorBorderColor= Colors.red;
  final Color focusedBorderColor=defaultColor;
  final Color enabledBorderColor=const Color(0xffeeeeee);
  final Color inputTextColor= Colors.white;
  final bool readOnly=false;
  final TextInputType? inputType;

  const MainTextFormField({
    Key? key,
    required this.context,
    required this.textFormFieldName,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.validator,
    required this.obscure,
    this.suffixIcon,
    this.inputType}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double radius=10;
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal:4),
            child: Text(textFormFieldName,style:
            Theme.of(context).textTheme.subtitle1!.copyWith(
                color: const Color(0xff9796a1)
            ),),
          ),
          TextFormField(
            keyboardType: inputType,
            autocorrect: true,
            obscureText: obscure,
            validator: validator,
            controller: controller,
            style:Theme.of(context).textTheme.subtitle1,
            readOnly: readOnly,
            textInputAction: TextInputAction.done,
            cursorColor: inputTextColor,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal:15,vertical: 20),
              suffixIcon: suffixIcon,
              suffixIconColor: Colors.grey.withOpacity(.5),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, style: BorderStyle.solid, color:  focusedErrorBorderColor),
                  borderRadius: BorderRadius.circular(radius)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, style: BorderStyle.solid, color: focusedErrorBorderColor),
                  borderRadius: BorderRadius.circular(radius)),
              errorStyle: GoogleFonts.mulish(color: Colors.red, fontSize: 10),
              hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: const Color(0xffc4c4c4)
              ),
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, style: BorderStyle.solid, color:focusedBorderColor),
                  borderRadius: BorderRadius.circular(radius)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width:1, style: BorderStyle.solid, color: enabledBorderColor),
                  borderRadius: BorderRadius.circular(radius)),
              // prefixIcon: Icon(
              //   prefixIcon,
              //   color: prefixColor,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}






class SearchTextFormField extends StatelessWidget {

  final BuildContext context;
  final String hintText;
  final String textFormFieldName;
  final IconData ?prefixIcon;
  final TextEditingController controller;
  final String? Function(String ?value)? validator;
  final bool obscure = false;
  final Widget? suffixIcon;
  final Color focusedErrorBorderColor= Colors.red;
  final Color focusedBorderColor=defaultColor;
  final Color enabledBorderColor=const Color(0xffeeeeee);
  final Color inputTextColor= Colors.white;
  final bool readOnly=false;
  final TextInputType? inputType;

  const SearchTextFormField({
    Key? key,
    required this.context,
    required this.textFormFieldName,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.validator,
    this.suffixIcon,
    this.inputType}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double radius=14;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SizedBox(
        width:260,
        height: 51,
        child: TextFormField(
          keyboardType: inputType,
          autocorrect: true,
          obscureText: obscure,
          validator: validator,
          controller: controller,
          style:Theme.of(context).textTheme.subtitle1,
          readOnly: readOnly,
          textInputAction: TextInputAction.done,
          cursorColor: inputTextColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal:15,vertical: 20),
            suffixIcon: suffixIcon,
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, style: BorderStyle.solid, color:  focusedErrorBorderColor),
                borderRadius: BorderRadius.circular(radius)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, style: BorderStyle.solid, color: focusedErrorBorderColor),
                borderRadius: BorderRadius.circular(radius)),
            errorStyle: GoogleFonts.mulish(color: Colors.red, fontSize: 10),
            hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 14,
                color: const Color(0xffc4c4c4)),
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, style: BorderStyle.solid, color:focusedBorderColor),
                borderRadius: BorderRadius.circular(radius)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width:1, style: BorderStyle.solid, color: enabledBorderColor),
                borderRadius: BorderRadius.circular(radius)),
            prefixIcon:  Icon(
              Icons.search,
              color: Theme.of(context).textTheme.subtitle1!.color,
            ),
          ),
        ),
      ),
    );
  }
}