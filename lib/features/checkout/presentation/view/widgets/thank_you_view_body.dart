import 'package:checkout_payment_ui/features/checkout/presentation/view/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const Positioned(
            left: 0,
            right: 0,
            top: -40,
            child: const CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFFd9d9d9),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff34a853),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .23,
            left: 30,
            child: Dash(
              direction: Axis.horizontal,
              length: 250,
              dashLength: 10,
              dashColor: const Color.fromARGB(255, 110, 95, 95),
            ),
          ),
        ],
      ),
    );
  }
}
