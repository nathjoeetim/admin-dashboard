import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/style.dart';

class MiddleHeader extends StatelessWidget {
  const MiddleHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            PrimaryText(
              text: 'Dashboard ',
              size: 30.0,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: 'Payment Update ',
              size: 16.0,
              fontWeight: FontWeight.w800,
              color: AppColors.secondary,
            )
          ]),
        ),
        Spacer(),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: EdgeInsets.only(left: 40, right: 5),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                borderSide: BorderSide(
                  color: AppColors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                borderSide: BorderSide(
                  color: AppColors.white,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.black,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(
                color: AppColors.secondary,
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
