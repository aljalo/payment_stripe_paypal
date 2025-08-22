import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_using_stripe/core/errors/failures.dart';
import 'package:payment_using_stripe/core/utlis/stripe_service.dart';
import 'package:payment_using_stripe/features/checkout/data/repos/checkout_repo.dart';
import 'package:payment_using_stripe/features/checkout/data/models/payment_intent_input_model.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );

      return right(null);
    } on StripeException catch (e) {
      return left(
        ServerFailure(errMessage: e.error.message ?? 'Opps there was an error'),
      );
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
