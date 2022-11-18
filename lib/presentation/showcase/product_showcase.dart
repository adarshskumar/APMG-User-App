import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/showcase/widgets/row_text.dart';
import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

class ProductShowcase extends StatefulWidget {
  ProductShowcase({super.key});

  @override
  State<ProductShowcase> createState() => _ProductShowcaseState();
}

class _ProductShowcaseState extends State<ProductShowcase> {
  int pageIndex = 0;

  List<Widget> img = [
    Image.asset('assets/images/carosel.png'),
    Image.asset('assets/images/carosel.png'),
    Image.asset('assets/images/carosel.png'),
    Image.asset('assets/images/carosel.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.08,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 26,
            ),
            color: borderColor,
            onPressed: () {},
          ),
          title: const SearchField(
            prefixIcon: 'assets/icons/qrcode.png',
            hintText: 'Item/Job',
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: Image.asset(
                'assets/icons/Heart.png',
                width: 28,
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.08, vertical: width * 0.06),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.28,
                    width: width,
                    child: PageView(
                      children: img,
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                    ),
                  ),
                  CarouselIndicator(
                    width: width * 0.025,
                    height: width * 0.025,
                    space: width * 0.03,
                    color: const Color(0xFFC4C4C4),
                    activeColor: primaryYellow,
                    count: img.length,
                    index: pageIndex,
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.53,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 8),
                      blurRadius: 6,
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.08, vertical: width * 0.08),
                child: Column(children: [
                  const Text(
                    'Product Titler rg rg rgdecdced',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '\$1575.00',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'AAA01',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  RowText(
                    height: height,
                    firstName: 'Brand',
                    secondName: 'APMG',
                  ),
                  RowText(
                    height: height,
                    firstName: 'Specification',
                    secondName: 'APMG',
                  ),
                  RowText(
                    height: height,
                    firstName: 'Size',
                    secondName: 'APMG',
                  ),
                  RowText(
                    height: height,
                    firstName: 'Karat',
                    secondName: 'APMG',
                  ),
                  RowText(
                    height: height,
                    firstName: 'Style',
                    secondName: 'APMG',
                  ),
                ]),
              ),
            )
          ],
        )));
  }
}
