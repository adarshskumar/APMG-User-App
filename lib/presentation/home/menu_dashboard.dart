import 'package:apmg/presentation/home/widgets/menu_icon.dart';
import 'package:apmg/presentation/pod/screen_pod.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double? screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController? _controller;
  Animation<double>? _scaleAnimation;
  Animation<double>? _menuScaleAnimation;
  Animation<Offset>? _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller!);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller!);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller!);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  final items = ['Show', 'Favorites', 'About', 'Logout'];
  final itemIcons = [
    Icons.star_border_outlined,
    Icons.favorite_border_outlined,
    Icons.info_outline_rounded,
    Icons.logout
  ];

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation!,
      child: ScaleTransition(
        scale: _menuScaleAnimation!,
        child: Padding(
          padding: EdgeInsets.only(
              left: 16.0,
              bottom: screenHeight! * 0.45,
              right: screenWidth! * 0.4),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(itemIcons[index]),
                    title: Text(items[index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(height: 16);
                },
                itemCount: 4),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth!,
      right: isCollapsed ? 0 : -0.2 * screenWidth!,
      child: ScaleTransition(
        scale: _scaleAnimation!,
        child: Material(
          animationDuration: duration,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: backgroundColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(top: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth! * 0.07),
                        child: IconButton(
                          icon: Image.asset(
                            'assets/icons/menu_icon.png',
                          ),
                          onPressed: () {
                            setState(() {
                              if (isCollapsed) {
                                _controller!.forward();
                              } else {
                                _controller!.reverse();
                              }
                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth! * 0.23),
                        child: const Text(
                          "Home",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth! * 0.085,
                        right: screenWidth! * 0.085,
                        top: screenWidth! * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: MenuIcon(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                menuIcon:
                                    Image.asset('assets/icons/invoice.png'),
                                menuText: 'INVOICE',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScreenPOD()),
                                );
                              },
                              child: MenuIcon(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                menuText: 'POD',
                                menuIcon: Image.asset('assets/icons/pod.png'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MenuIcon(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              menuIcon:
                                  Image.asset('assets/icons/proforma.png'),
                              menuText: 'PROFORMA',
                            ),
                            MenuIcon(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              menuText: 'SHOW CASE',
                              menuIcon: Image.asset('assets/icons/diamond.png'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MenuIcon(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              menuIcon: Image.asset(
                                'assets/icons/customer.png',
                                height: screenHeight! * 0.07,
                              ),
                              menuText: ' CUSTOMER \n STATEMENT',
                            ),
                            MenuIcon(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              menuText: 'CREDIT NOTE',
                              menuIcon: Image.asset('assets/icons/credit.png'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MenuIcon(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              menuIcon:
                                  Image.asset('assets/icons/cashbook.png'),
                              menuText: 'CASH BOOK',
                            ),
                            MenuIcon(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              menuText: 'WISH LIST',
                              menuIcon: Image.asset('assets/icons/cart.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
