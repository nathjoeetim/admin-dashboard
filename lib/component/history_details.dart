import 'package:admin_dashboard/data/data.dart';
import 'package:flutter/material.dart';
import '../style/colors.dart';
import '../style/style.dart';

class HistoryInfo extends StatelessWidget {
  const HistoryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: List.generate(transactionHistory.length, (index) {
            return TableRow(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    left: 5.0,
                  ),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                      transactionHistory[index]['avatar']!,
                    ),
                  ),
                ),
                PrimaryText(
                  text: transactionHistory[index]['label']!,
                  color: AppColors.secondary,
                  size: 14.0,
                ),
                PrimaryText(
                  text: transactionHistory[index]['time']!,
                  color: AppColors.secondary,
                  size: 15.0,
                ),
                PrimaryText(
                  text: transactionHistory[index]['amount']!,
                  color: AppColors.secondary,
                  size: 15.0,
                ),
                PrimaryText(
                  text: transactionHistory[index]['status']!,
                  color: AppColors.secondary,
                  size: 14.0,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
