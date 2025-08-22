import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../../core/utlis/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/master_card.svg'),
          SizedBox(width: 23),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Credit card\n', style: Styles.style18),
                TextSpan(text: 'Mastercard **78', style: Styles.style18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
