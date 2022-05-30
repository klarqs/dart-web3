import 'package:cryptocurrency_wallet/app/constants/colors.dart';
import 'package:cryptocurrency_wallet/app/modules/personal_information/views/personal_information_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kolawole",
                          style: GoogleFonts.dmSans(
                            fontSize: 28,
                            letterSpacing: -1,
                            fontWeight: FontWeight.w800,
                            color: const Color(0XFF12141F),
                          ),
                        ),
                        Text(
                          "Good morning, wash your hands ☀️",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0XFF666669),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => const PersonalInformation(),
                          transition: Transition.cupertino,
                        );
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      // borderRadius: BorderRadius.circular(50),
                      // radius: 20,
                      child: SvgPicture.asset(
                        'assets/svgs/user_icon_dashboard_home.svg',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 8.0,
                ),
                padding: const EdgeInsets.all(28.0),
                width: Get.width,
                height: 148,
                decoration: BoxDecoration(
                  color: apacePrimaryColor,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Balance',
                      style: GoogleFonts.dmSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    Text(
                      '\$0.00',
                      style: GoogleFonts.dmSans(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  top: 12.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/receive.svg',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "Receive",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0XFF5B5B60),
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/purchase.svg',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "Purchase",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0XFF5B5B60),
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/withdraw.svg',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "Withdraw",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0XFF5B5B60),
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32.0),
                    Text(
                      'Assets',
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF12141F),
                      ),
                    ),
                    // const SizedBox(height: 4.0),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        assetCard(
                          icon: 'assets/svgs/tether.svg',
                          abbv: 'USDT',
                          name: "Tether USD",
                          amount: "USD 0.00",
                          value: 'USDT 0.00',
                        ),
                        assetCard(
                          icon: 'assets/svgs/usd_coin.svg',
                          abbv: 'USDC',
                          name: "US Dollar coin",
                          amount: "USD 0.00",
                          value: 'USDC 0.00',
                        ),
                        assetCard(
                          icon: 'assets/svgs/busd.svg',
                          abbv: 'BUSD',
                          name: "Binance US Dollar",
                          amount: "USD 0.00",
                          value: 'BUSD 0.00',
                        ),
                        assetCard(
                          icon: 'assets/svgs/dai.svg',
                          abbv: 'DAI',
                          name: "Dai Stablecoin",
                          amount: "USD 0.00",
                          value: 'DAI 0.00',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60.0),
            ],
          ),
        ),
      ),
    );
  }

  assetCard({icon, name, abbv, amount, value}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      width: Get.width,
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(
          width: .2,
          color: const Color(0XFF282A3D),
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 6,
            color: Colors.black.withOpacity(.08),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    abbv,
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: const Color(0XFF282A3D),
                      height: 1.6,
                    ),
                  ),
                  Text(
                    name,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                amount,
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color(0XFF282A3D),
                  height: 1.6,
                ),
              ),
              Text(
                value,
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0XFF868686),
                  height: 1.6,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
