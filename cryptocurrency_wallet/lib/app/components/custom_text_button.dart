import 'package:cryptocurrency_wallet/app/components/spaces_widget.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomTextButton({
    Key? key,
    required this.buttonText,
    this.boxShadowColor,
    required this.onPressed,
    this.buttonColor = apacePrimaryColor,
    this.textColor = whiteColor,
    this.icon = 'assets/svgs/arrow_right.svg',
    this.iconSize = const Size(12, 12),
    this.splashColor = apacePrimaryColor,
    this.buttonText2 = '',
    this.isLoading = false,
    this.fontWeight,
  }) : super(key: key);

  final dynamic boxShadowColor, onPressed;
  final String buttonText, buttonText2, icon;
  final Color splashColor, textColor, buttonColor;
  final bool isLoading;
  final Size iconSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: boxShadowColor ?? grayColor3.withOpacity(.2),
              blurRadius: 10, // soften the shadow
              spreadRadius: 0, //extend the shadow
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: ElevatedButton(
          onPressed: isLoading ? () {} : onPressed,
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            onPrimary: splashColor,
            elevation: 0,
            primary:
                isLoading ? apacePrimaryColor.withOpacity(.5) : buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(width: 12),
                    Text(
                      'Processing...',
                      style: bodyText5Bold.copyWith(
                          fontSize: 15,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                    const HorizontalSpace(12),
                    const SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 1,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          buttonText,
                          style: bodyText5Bold.copyWith(
                              fontSize: 15,
                              color: textColor,
                              fontWeight: fontWeight ?? FontWeight.bold,
                              letterSpacing: .5),
                        ),
                        Text(
                          buttonText2,
                          style: bodyText5Bold.copyWith(
                              fontSize: 15,
                              color: textColor,
                              fontWeight: fontWeight ?? FontWeight.bold),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //     height: iconSize.height,
                    //     width: iconSize.width,
                    //     child: SvgPicture.asset(icon, color: textColor))
                  ],
                ),
        ),
      ),
    );
  }
}
