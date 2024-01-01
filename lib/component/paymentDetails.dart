import 'package:admin_dashboard/component/paymentListTile.dart';
import 'package:admin_dashboard/data/data.dart';
import 'package:admin_dashboard/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/size_config.dart';
import '../style/colors.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({
    super.key,
  });

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 3,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: AppColors.iconGrey,
                blurRadius: 15.0,
                offset: Offset(10.0, 15.0),
              )
            ],
          ),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Recent Activities',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '03 September 2023',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
            recentActivities.length,
            (index) => PaymentListTile(
              icon: recentActivities[index]["icon"],
              label: recentActivities[index]['label'],
              amount: recentActivities[index]['amount'],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Upcoming payment',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '23 December 2023',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 3,
        ),
        Column(
          children: List.generate(
            upcomingPayments.length,
            (index) => PaymentListTile(
              icon: upcomingPayments[index]["icon"],
              label: upcomingPayments[index]['label'],
              amount: upcomingPayments[index]['amount'],
            ),
          ),
        ),
      ],
    );
  }
}
