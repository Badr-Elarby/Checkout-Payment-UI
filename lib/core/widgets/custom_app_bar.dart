import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar BuildAppBar({final String? title}) {
  return AppBar(
    leading: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title ?? '',
      style: Styles.style25,
    ),
  );
}
