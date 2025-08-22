import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_using_stripe/core/functions/excute_paypal_payment.dart';
import 'package:payment_using_stripe/core/functions/excute_stripe_payment.dart';
import 'package:payment_using_stripe/core/functions/get_transctions.dart';
import 'package:payment_using_stripe/core/widgets/custom_button.dart';
import 'package:payment_using_stripe/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/success_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key, required this.isPaypal});

  final bool isPaypal;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return SuccessView();
              },
            ),
          );
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            if (isPaypal) {
              //////////////////////////////////////////////////////////
              //**** To make the payment using PayPal using flutter_paypal_payment package ****//
              //////////////////////////////////////////////////////////
              var transctionsData = getTransxtionsData();
              exceutePaypalPayment(context, transctionsData);
            } else {
              //////////////////////////////////////////////////////////
              //******* To make the payment using Stripe *************//
              //////////////////////////////////////////////////////////

              excuteStripePayment(context);
            }
          },
          isLoading: state is PaymentLoading ? true : false,
          text: 'Continue',
        );
      },
    );
  }
}
