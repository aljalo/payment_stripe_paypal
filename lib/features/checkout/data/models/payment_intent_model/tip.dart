// class Tip {
//   Tip();

//   factory Tip.fromJson(Map<String, dynamic> json) {
//     // TODO: implement fromJson
//     throw UnimplementedError('Tip.fromJson($json) is not implemented');
//   }

//   Map<String, dynamic> toJson() {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
// }
// //

class Tip {
  final int? amount;
  final String? currency;

  Tip({this.amount, this.currency});

  factory Tip.fromJson(Map<String, dynamic> json) {
    return Tip(
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'amount': amount, 'currency': currency};
  }
}
