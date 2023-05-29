import 'package:ardilla_mobile_application/app/presentation/home/quick_link_row.dart';
import 'package:ardilla_mobile_application/app/presentation/home/video_container.dart';
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/size_configuration.dart';
import '../../data/data_storage/user_profile_storage.dart';
import 'cards/cards_view.dart';
import 'complete_kyc_container.dart';
import 'drawer.dart';
import 'explore.dart';
import 'investment_builder.dart';
import 'others/others_view.dart';


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
    String userName = UserProfileStorage.retrieveUserName();
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(30),
             // right: getProportionateScreenWidth(22),
              top: getProportionateScreenHeight(33),
              bottom: getProportionateScreenHeight(44),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: getProportionateScreenWidth(42)),
                  child: Row(
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
                              Row(
                                children: [
                                  createGeneralText(
                                    inputText: 'Good Morning.',
                                    fontSize: 12,
                                    weight: FontWeight.w500,
                                    colorName: Palette.gray400Color,
                                    family: FontFamily.cabinetRegular,
                                    textAlign: TextAlign.center,
                                  ),
                                  const Icon(Icons.sunny,
                                  size: 11,
                                  color: Palette.amber400Color,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                              createGeneralText(
                                inputText: userName,
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
                      SizedBox(height: getProportionateScreenHeight(24),
                      width: getProportionateScreenWidth(24),
                      child: Image.asset('images/notification.png'),)
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(31),),
                Padding(
                  padding: EdgeInsets.only(
                    right: getProportionateScreenWidth(27)
                  ),
                  child: SizedBox(
                      height: getProportionateScreenHeight(270),
                      width: double.infinity,
                      child: const CardsView()),
                ),
                SizedBox(height: getProportionateScreenHeight(10),),
                // widget
                SizedBox(height: getProportionateScreenHeight(30),),
                Padding(
                  padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
                  child: const QuickLinkRow(),
                ),
                SizedBox(height: getProportionateScreenHeight(41),),
                Padding(
                  padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
                  child: const CompleteKYCContainer(),
                ),
                SizedBox(height: getProportionateScreenHeight(44.19),),
                const InvestmentBuilder(),
                SizedBox(height: getProportionateScreenHeight(81),),
                SizedBox(
                  width: double.infinity,
                    height: getProportionateScreenHeight(270),
                    child: const OthersView()),
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
