class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;

  PaymentIntentInputModel({
    required this.customerId, // في حالة عدم احتياج الكستمر ليكون مسوي حساب يمكن ازالة الريكوايرد
    required this.amount,
    required this.currency,
  });

  toJson() {
    return {
      //'amount': '${amount}00', // هذه الطريقة تستخدم فقط عندما يكون الريقم صحيح غير ذلك فهي خطا
      'amount': amount,
      'currency': currency,
      'customer': customerId,
    };
  }
}
