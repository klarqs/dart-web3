import 'package:cryptocurrency_wallet/app/constants/colors.dart';
import 'package:cryptocurrency_wallet/app/modules/customers/views/customers_view.dart';
import 'package:cryptocurrency_wallet/app/modules/dashboard_home/views/dashboard_home_view.dart';
import 'package:cryptocurrency_wallet/app/modules/more/views/more_view.dart';
import 'package:cryptocurrency_wallet/app/modules/payment_links/views/payment_links_view.dart';
import 'package:cryptocurrency_wallet/app/modules/transaction_history/views/transaction_history_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class DashboardBottomTabs extends StatefulWidget {
  final int tabIndex;
  final bool isGuestUser;
  const DashboardBottomTabs({
    Key? key,
    this.tabIndex = 0,
    this.isGuestUser = false,
  }) : super(key: key);
  @override
  _DashboardBottomTabsState createState() => _DashboardBottomTabsState();
}

class _DashboardBottomTabsState extends State<DashboardBottomTabs> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int _currentIndex = 0;
  final List<Map<String, dynamic>> _children = [];

  @override
  void initState() {
    _children.add({
      "title": "Home",
      "widget": const DashboardHome(),
    });
    _children.add({
      "title": "History",
      "widget": const TransactionHistory(),
    });
    _children.add({
      "title": "Links",
      "widget": const PaymentLinks(),
    });
    _children.add({
      "title": "Customers",
      "widget": const Customers(),
    });
    _children.add({
      "title": "More",
      "widget": const More(),
    });
    _currentIndex = widget.tabIndex;
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFFAFAFB),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          selectedItemColor: apacePrimaryColor,
          unselectedItemColor: const Color(0XFFB7B7BF),
          onTap: (int index) {
            HapticFeedback.selectionClick();
            setState(() => _currentIndex = index);
          },
          unselectedLabelStyle: const TextStyle(
            height: 1.8,
            letterSpacing: .1,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color(0XFFB7B7BF),
          ),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
            letterSpacing: .1,
            color: apacePrimaryColor,
            fontWeight: FontWeight.bold,
            height: 1.8,
          ),
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/home-2.svg',
                color: _currentIndex == 0
                    ? apacePrimaryColor
                    : const Color(0xffBDBDC5),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/chart.svg',
                color: _currentIndex == 1
                    ? apacePrimaryColor
                    : const Color(0xffBDBDC5),
                height: 22,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/link-2.svg',
                height: 20,
                color: _currentIndex == 2
                    ? apacePrimaryColor
                    : const Color(0xffBDBDC5),
              ),
              label: 'Links',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/people.svg',
                color: _currentIndex == 3
                    ? apacePrimaryColor
                    : const Color(0xffBDBDC5),
              ),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/category.svg',
                color: _currentIndex == 4
                    ? apacePrimaryColor
                    : const Color(0xffBDBDC5),
              ),
              label: 'More',
            ),
          ],
        ),
      ),
      body: _children.length >= 3
          ? _children[_currentIndex]['widget']
          : Container(),
    );
  }
}
