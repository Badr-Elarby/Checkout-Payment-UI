import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFd9d9d9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20 + 16, left: 16, right: 16),
        child: Column(children: [
          const Text(
            'thank you!',
            textAlign: TextAlign.center,
            style: Styles.style25,
          ),
          const Text(
            'Your transfer was ssuccessful',
            textAlign: TextAlign.center,
            style: Styles.style18,
          ),
          const SizedBox(height: 40),
          const PaymentItemInfo(
            title: 'Date',
            value: '01/24/24',
          ),
          const SizedBox(height: 20),
          const PaymentItemInfo(
            title: 'Time',
            value: '10:45 AM',
          ),
          const SizedBox(height: 20),
          const PaymentItemInfo(
            title: 'to',
            value: 'Sam lous',
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
            height: 40,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          SizedBox(height: 10),
          Container(
            width: 305,
            height: 73,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/master_card.svg'),
                  const SizedBox(width: 26),
                  const Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                        text: 'Credit Card\n',
                        style: TextStyle(fontSize: 16, height: 0),
                      ),
                      TextSpan(
                        text: 'Mastercard **78',
                        style: TextStyle(fontSize: 16, height: 0),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(
              FontAwesomeIcons.barcode,
              size: 60,
            ),
            Container(
              width: 113,
              height: 58,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                borderRadius: BorderRadius.circular(15),
              )),
              child: Center(
                child: Text(
                  'PAID',
                  textAlign: TextAlign.center,
                  style: Styles.style25.copyWith(color: Color(0xFF34A853)),
                ),
              ),
            )
          ]),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .1 - 10,
          )
        ]),
      ),
    );
  }
}

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.styleBold18,
        )
      ],
    );
  }
}
