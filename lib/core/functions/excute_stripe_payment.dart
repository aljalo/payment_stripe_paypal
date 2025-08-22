import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_using_stripe/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_using_stripe/features/checkout/presentation/manager/payment_cubit.dart';

void excuteStripePayment(BuildContext context) {
  PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
    // There are defult values just for check
    amount: '100',
    currency: 'USD',
    customerId: 'cus_SuKGC7s5v1IXjU',
  );
  BlocProvider.of<PaymentCubit>(
    context,
  ).makePayment(paymentIntentInputModel: paymentIntentInputModel);
}
