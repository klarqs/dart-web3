import 'package:cryptocurrency_wallet/app/components/empty_state_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Customers extends StatelessWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 12.0),
                child: Text(
                  "Customers",
                  style: GoogleFonts.dmSans(
                    fontSize: 28,
                    letterSpacing: -1,
                    fontWeight: FontWeight.w800,
                    color: const Color(0XFF12141F),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 12.0),
                    EmptyState(
                      emptyStateTitleText: 'No customers yet',
                      emptyStateDescriptionText:
                          'You currently do not have any customer.',
                    ),

                    // NormalTextField(
                    //   prefixIcon: Container(
                    //       padding: const EdgeInsets.all(12),
                    //       height: 48,
                    //       width: 48,
                    //       child: SvgPicture.asset(
                    //           'assets/svgs/search-normal.svg')),
                    //   hintText: 'Search',
                    //   textCapitalization: TextCapitalization.none,
                    //   keyboardType: TextInputType.text,
                    //   textInputAction: TextInputAction.done,
                    // ),
                    // const SizedBox(height: 12.0),

                    SizedBox(height: 60.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  customersCard({
    required String transIcon,
    required String transTitle,
    required String time,
    required String date,
    required String amount,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: Get.width,
      height: 72,
      decoration: BoxDecoration(
        color: const Color(0XFFF4F4F5),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                transIcon,
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    transTitle,
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF282A3D),
                      height: 1.6,
                    ),
                  ),
                  Text(
                    '$time   $date',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0XFF868686),
                      height: 1.6,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            amount,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: const Color(0XFF282A3D),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
