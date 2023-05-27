import 'package:ardilla_mobile_application/app/presentation/home/quick_link_row.dart';
import 'package:ardilla_mobile_application/app/presentation/home/video_container.dart';
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/size_configuration.dart';
import 'complete_kyc_container.dart';
import 'drawer.dart';
import 'explore.dart';
import 'investment_builder.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(30),
              right: getProportionateScreenWidth(22),
              top: getProportionateScreenHeight(33),
              bottom: getProportionateScreenHeight(44),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if(_scaffoldKey.currentState!.isDrawerOpen){
                              _scaffoldKey.currentState!.closeDrawer();
                            }else{
                              _scaffoldKey.currentState!.openDrawer();
                            }
                          },
                          child: SizedBox(
                            height: getProportionateScreenHeight(51),
                            width: getProportionateScreenWidth(51),
                            child: Image.asset('images/profile picture.png'),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            createGeneralText(
                              inputText: 'Good Morning.',
                              fontSize: 12,
                              weight: FontWeight.w500,
                              colorName: Palette.gray400Color,
                              family: FontFamily.cabinetRegular,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(8),
                            ),
                            createGeneralText(
                              inputText: 'Cadet <Annie/>',
                              fontSize: 18,
                              weight: FontWeight.w700,
                              colorName: Palette.textColor,
                              family: FontFamily.cabinetRegular,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Iconsax.notification,
                      size: getProportionateScreenWidth(24),
                      color: Palette.gray400Color,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(31),),
                Container(
                  height: getProportionateScreenHeight(209.15),
                  width: getProportionateScreenWidth(370.71),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.31),
                    color: const Color(0xff5003AC).withOpacity(0.30),
                    border: Border.all(width: 2, color: const Color(0xff5003AC).withOpacity(0.30))
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(30),),
                // widget
                SizedBox(height: getProportionateScreenHeight(30),),

                const QuickLinkRow(),
                SizedBox(height: getProportionateScreenHeight(41),),
                const CompleteKYCContainer(),
                SizedBox(height: getProportionateScreenHeight(44.19),),
                const InvestmentBuilder(),
                SizedBox(height: getProportionateScreenHeight(69),),
                const VideoContainer(),
                SizedBox(height: getProportionateScreenHeight(48.6),),
                const Explore(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
