import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_using_stripe/core/utlis/api_keys.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const FlutterPayment());
}

class FlutterPayment extends StatelessWidget {
  const FlutterPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyCartView());
  }
}
