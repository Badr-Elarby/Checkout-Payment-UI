import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem(
      {super.key, required this.title, required this.value, this.style});
  final String title, value;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        style: Styles.style18,
      ),
      const Spacer(),
      Text(
        value,
        style: Styles.style18,
      ),
    ]);
  }
}
