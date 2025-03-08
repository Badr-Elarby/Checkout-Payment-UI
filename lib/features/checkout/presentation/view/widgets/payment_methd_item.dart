import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1,
                color: isActive
                    ? const Color(0xFF34A853)
                    : const Color.fromARGB(255, 95, 94, 94)),
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: isActive
                  ? const Color(0xFF34A853)
                  : const Color.fromARGB(255, 255, 255, 255),
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/images/card.svg',
            height: 25,
          ),
        ),
      ),
    );
  }
}
