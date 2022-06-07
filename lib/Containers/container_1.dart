import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: CustomColors.customRed,
        boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 10.0)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //The grey box (With constant width)
          Container(
            width: Constants.greyComponentWidth,
            height: Constants.smallBoxesHeight,
            decoration: BoxDecoration(
              color: CustomColors.customGrey,
            ),
          ),
          //The green Container (With responsive width)
          //The grey box (With constant width)
          Container(
            margin: const EdgeInsets.only(
                top: 20,
                right:
                    20), // Some margin required from ight accoording to design
            width: double.infinity,
            height: Constants.smallBoxesHeight,
            decoration: BoxDecoration(
              color: CustomColors.customGreen,
            ),
          )
        ],
      ),
    );
  }
}
