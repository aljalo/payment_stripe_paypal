import 'package:flutter/material.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/success_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // I use Transform widget to move the ViewBody over the app bar
      body: Transform.translate(
        offset: Offset(0, -16),
        child: SuccessViewBody(),
      ),
    );
  }
}
