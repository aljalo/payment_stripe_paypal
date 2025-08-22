import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_using_stripe/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:payment_using_stripe/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/payment_methodsd_bottom_sheet.dart';
import 'package:payment_using_stripe/features/checkout/presentation/views/widgets/total_price_widget.dart';
import '../../../../../core/widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(height: 3),
          OrderInfoItem(title: 'Oreder Subtotal', value: r'$5.99'),
          const SizedBox(height: 3),
          OrderInfoItem(title: 'Dicount', value: r'$5.99'),
          const SizedBox(height: 3),
          OrderInfoItem(title: 'Shipping', value: r'$5.99'),
          const Divider(thickness: 2, height: 34),
          TotalPrice(title: 'Total', value: r'$199.00'),
          const SizedBox(height: 16),
          CustomButton(
            text: 'Complate Payment',
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const PaymentDetailsView();
              //     },
              //   ),
              // );
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImpl()),
                    child: PaymentMethodsBottomSheet(),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
