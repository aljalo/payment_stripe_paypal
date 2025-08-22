//لاخبارنا بكل شيء يحصل في الجيك اوت فيجر
//ضفنا بكج الدارت زت لكي لاستخدام الايزر كلاس لتحديد ماذا سيرجع سواء كان فشل او الداتا التي ننتظرها
import 'package:dartz/dartz.dart';
import 'package:payment_using_stripe/core/errors/failures.dart';
import 'package:payment_using_stripe/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
