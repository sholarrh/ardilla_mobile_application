
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.transparent,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: getProportionateScreenWidth(28.73),
            top: getProportionateScreenHeight(39.14),
            child: Container(
              height: getProportionateScreenHeight(224.25),
              width: getProportionateScreenWidth(339.03),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 0.88,
                  color: Palette.secondaryColor
                )
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(248),
            width: getProportionateScreenWidth(357),
            child: Image.asset('images/video.png'),
          ),
        ],
      ),
    );
  }
}
