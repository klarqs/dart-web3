import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomIconButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: const BoxDecoration(
        // border:
        //     Border.all(color: switchPrimaryColor.withOpacity(.2), width: 1),
        shape: BoxShape.circle,
        color: Color(0XFF6C4AED),
      ),
      child: IconButton(
        splashColor: Colors.transparent,
        // highlightColor: splashPrimaryColor.withOpacity(.1),
        splashRadius: 32,
        icon: SvgPicture.asset(
          'assets/svgs/arrow-right.svg',
        ),
        onPressed: onPressed,
      ),
    );
  }
}
