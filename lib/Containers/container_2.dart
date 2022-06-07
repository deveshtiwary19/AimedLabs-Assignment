import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class Container2 extends StatelessWidget {
  const Container2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Tha container bottom in stack
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: CustomColors.customRed,
            boxShadow: const [
              BoxShadow(color: Colors.black54, blurRadius: 10.0)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //The green Container (With responsive width)
              //The grey box (With constant width)
              Container(
                margin: EdgeInsets.only(
                    top: 20 +
                        Constants
                            .smallBoxesHeight, //Maintaining the same space left on top as on the other cad
                    right: 0), //Margin from right not required accor to design
                width: double.infinity,
                height: Constants.smallBoxesHeight,
                decoration: BoxDecoration(
                  color: CustomColors.customGreen,
                ),
              )
            ],
          ),
        ),
        //the overlapping container in stack
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            child: //The grey box (With constant width)
                Container(
              width: Constants.greyComponentWidth,
              height: Constants.smallBoxesHeight,
              margin: const EdgeInsets.symmetric(
                  horizontal:
                      15), //To maintain the white spcae left both sides on small shrinked screens
              decoration: BoxDecoration(
                color: CustomColors.customGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
