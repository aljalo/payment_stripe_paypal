import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/total_price_widget.dart';
import '../../../../../core/utlis/styles.dart';

class SeccessCard extends StatelessWidget {
  const SeccessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFEDEDED),
        //color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            SizedBox(height: 42),
            PaymentItemInfo(title: 'Date', value: '25/2/2025'),
            SizedBox(height: 20),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            SizedBox(height: 20),
            PaymentItemInfo(title: 'To', value: 'Ali Jalo'),
            Divider(thickness: 2, height: 60),
            TotalPrice(title: 'Total', value: r'$50.99'),
            SizedBox(height: 30),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 72),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.5, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Paied',
                      textAlign: TextAlign.center,
                      style: Styles.style24.copyWith(color: Color(0xFF34A853)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
