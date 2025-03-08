import 'package:checkout_payment_ui/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        title: 'My Cart',
      ),
      body: const MyCartViewBody(),
    );
  }
}
