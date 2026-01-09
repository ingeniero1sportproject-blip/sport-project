import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.action,
    this.function,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  TextInputType? action ;
  Function? function = (){};
  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          keyboardType: action??TextInputType.text,
          onTap:(){
            // ignore: unnecessary_statements
            function??();
          },
          cursorColor: appTheme.buttonColor,
          controller: controller,
          style: textStyle ?? CustomTextStyles.bodyLargeOnError,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          // keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray600,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        // isDense: true,
        contentPadding: contentPadding ??
            getPadding(
              left: 15,
              top: 18,
              right: 15,
              bottom: 18,
            ),
        errorStyle:  TextStyle(
          fontFamily: "Uniform Pro Extra Condensed",
          color: appTheme.red700,
          fontSize: getFontSize(
            14,
          ),
          fontWeight: FontWeight.w400
        ),
        fillColor: fillColor ?? theme.colorScheme.onPrimary,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
              borderSide: BorderSide(color: appTheme.buttonColor),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
          borderSide: BorderSide(
            color: appTheme.red700,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
          borderSide: BorderSide(
            color: appTheme.red700,
            width: 1,
          ),
        ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static UnderlineInputBorder get underLineOnPrimary => UnderlineInputBorder(
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimary,
        ),
      );
}
