import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:checkout_payment_ui/core/widgets/custom_button.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/payment_details.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/cart_info_item_widget.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/basket_image.png',
              height: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoItem(
            title: 'Subtotal',
            value: r'27.34$',
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'0$',
          ),
          const OrderInfoItem(
            title: 'shiping',
            value: r'8$',
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
            height: 20,
          ),
          const TotalPrice(
            title: 'Total Price',
            value: r'35.34$',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            onTap: () {
              print('tapped !');
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentDetailsView();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
