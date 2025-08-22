// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/custom_credit_card.dart';
// import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

// import '../../../../../core/widgets/custom_button.dart';
// import '../success_view.dart';

// class PaymentDetailsViewBody extends StatefulWidget {
//   const PaymentDetailsViewBody({super.key});

//   @override
//   State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
// }

// class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
//   final GlobalKey<FormState> formKey = GlobalKey();
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

//   @override
//   Widget build(BuildContext context) {
//     // return SingleChildScrollView(
//     //   child: Column(children: [PaymentMethosListView(), CustomCreditCard()]),
//     // );
//     return CustomScrollView(
//       slivers: [
//         // SliverToBoxAdapter(child: PaymentMethodsListView()),
//         SliverToBoxAdapter(
//           child: CustomCreditCard(
//             autovalidareMode: autovalidateMode,
//             formKey: formKey,
//           ),
//         ),
//         SliverFillRemaining(
//           hasScrollBody: false,
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
//               child: CustomButton(
//                 onTap: () {
//                   if (formKey.currentState!.validate()) {
//                     formKey.currentState!.save();
//                     // To check
//                     log('Paied');
//                   } else {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return SuccessView();
//                         },
//                       ),
//                     );
//                     autovalidateMode = AutovalidateMode.always;
//                     setState(() {});
//                   }
//                 },
//                 text: 'Pay',
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
