import 'package:flutter/material.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/custom_dash_line.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/success_card.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SeccessCard(),

          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: CustomDashLine(),
          ),

          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          CustomCheckIcon(),
        ],
      ),
    );
  }
}
