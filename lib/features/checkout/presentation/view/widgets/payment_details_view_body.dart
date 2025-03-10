import 'dart:developer';

import 'package:checkout_payment_ui/core/widgets/custom_button.dart';
import 'package:checkout_payment_ui/core/widgets/payments_method_list_view.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/custom_credit_card.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/payment_methd_item.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('payment');
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ThankYouView();
                      },
                    ));
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'payment ',
              ),
            ),
          ),
        )
      ],
    );
  }
}
