import 'package:checkout_payment_ui/core/widgets/payments_method_list_view.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/payment_methd_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const PaymentMethodsListView(),
        CustomCreditCard(),
      ],
    );
  }
}

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (Value) {}),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (CreditCardModel) {
              cardHolderName = CreditCardModel.cardHolderName;
              cardNumber = CreditCardModel.cardNumber;
              expiryDate = CreditCardModel.expiryDate;
              cvvCode = CreditCardModel.cvvCode;
              showBackView = CreditCardModel.isCvvFocused;

              setState(() {});
            },
            formKey: formKey)
      ],
    );
  }
}
