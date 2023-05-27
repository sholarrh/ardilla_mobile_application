import 'package:ardilla_mobile_application/app/presentation/authentication/login/login.dart';
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/reusable_widgets/coming_soon_container.dart';
import '../../../core/size_configuration.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: getProportionateScreenWidth(270),
      backgroundColor: Palette.primaryColor,
      child: ListView(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(38)
        ),
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(51),
                  width: getProportionateScreenWidth(51),
                  child: Image.asset('images/profile picture.png'),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),
                createGeneralText(
                  inputText: 'Anita Ojieh',
                  fontSize: 18,
                  weight: FontWeight.w700,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined,
            color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Profile',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.work_outline,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Portfolio',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.payment,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Payment',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          ListTile(
            leading: SizedBox(
              height: getProportionateScreenHeight(24),
                width: getProportionateScreenWidth(24),
                child: Image.asset('images/investment.png')),
            title: Row(
              children: [
                createGeneralText(
                  inputText: 'Investment',
                  fontSize: 12,
                  weight: FontWeight.w500,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                ),
                SizedBox(width: getProportionateScreenWidth(12),),
                const ComingSoonContainer()
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.security_outlined,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: Row(
              children: [
                createGeneralText(
                  inputText: 'Insurance',
                  fontSize: 12,
                  weight: FontWeight.w500,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                ),
                SizedBox(width: getProportionateScreenWidth(12),),
                const ComingSoonContainer()
              ],
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.compass,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Budgeting',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(80),),
          ListTile(
            leading:  SizedBox(
                height: getProportionateScreenHeight(24),
                width: getProportionateScreenWidth(24),
                child: Image.asset('images/log out.png')),
            title: createGeneralText(
              inputText: 'Log Out',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
            onTap: () {_showLogoutDialog(context);},
          ),
        ],
      ),
    );
  }
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          content: createGeneralText(
            inputText: 'Are you sure you want to LOG OUT?',
            fontSize: 14,
            weight: FontWeight.w500,
            colorName: Palette.textColor,
            family: FontFamily.cabinetRegular,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const Login()),
                        (route) => false);
              },
              child: Container(
                height: getProportionateScreenHeight(44),
                  width: getProportionateScreenWidth(98),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCE4EB),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: createGeneralText(
                    inputText: 'Confirm',
                    fontSize: 14,
                    weight: FontWeight.w500,
                    colorName: Palette.secondaryColor,
                    family: FontFamily.cabinetRegular,
                  ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: createGeneralText(
                inputText: 'No, Cancel',
                fontSize: 14,
                weight: FontWeight.w500,
                colorName: Palette.blackColor,
                family: FontFamily.cabinetRegular,
              ),
            ),
          ],
        );
      },
    );
  }
}
