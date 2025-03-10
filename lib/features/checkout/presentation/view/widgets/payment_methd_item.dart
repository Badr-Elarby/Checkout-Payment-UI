import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override

  /// Builds an animated container widget representing a payment method item.
  ///
  /// The container has a fixed width and height, and its border and shadow
  /// colors change based on the `isActive` state. It includes an SVG picture
  /// centered within a white container. The animation duration is 300
  /// milliseconds.

  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
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
              offset: const Offset(0, 0),
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
            image,
            height: 30,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
