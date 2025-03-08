import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/payment_methd_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodItem(
          isActive: false,
        )
      ],
    );
  }
}
