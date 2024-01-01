import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/responsive_dart.dart';
import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';

class InfoCard extends StatefulWidget {
  const InfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  final String? icon;
  final String? label;
  final String? amount;

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context) ? 200 : 300,
      constraints: const BoxConstraints(
        minWidth: 150.0,
      ),
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        bottom: 20.0,
        right: 40.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: AppColors.white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SvgPicture.asset(
          widget.icon!,
          width: 35.0,
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        PrimaryText(
          text: widget.label!,
          color: AppColors.secondary,
          size: 17.0,
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        PrimaryText(
          text: widget.amount!,
          fontWeight: FontWeight.w700,
          size: 18.0,
        )
      ]),
    );
  }
}
