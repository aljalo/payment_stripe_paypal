import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_using_stripe/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:payment_using_stripe/features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/success_view.dart';

void exceutePaypalPayment(
  BuildContext context,
  ({AmountModel amount, ItemListModel itemList}) transctionsData,
) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId:
            "YOUR CLIENT ID", // Should replace it with the paypalClientID from APIKeys
        secretKey:
            "YOUR SECRET KEY", // Should replace it with the paypalSecretKey from APIKeys
        transactions: [
          {
            "amount": transctionsData.amount.toJson(),

            "description": "The payment transaction description.",
            // "payment_options": {
            //   "allowed_payment_method":
            //       "INSTANT_FUNDING_SOURCE"
            // },
            "item_list": transctionsData.itemList.toJson(),
          },
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          // Better to use NamedRoute to make each screen has name
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SuccessView();
              },
            ),
            (route) {
              if (route.settings.name == '/') {
                return true;
              } else {
                return false;
              }
            },
          );
        },
        onError: (error) {
          SnackBar snackBar = SnackBar(content: Text(error.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MyCartView();
              },
            ),
            (route) {
              return false;
            },
          );
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ),
  );
}
