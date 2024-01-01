import 'package:flutter/material.dart';
import 'package:admin_dashboard/component/barChartComponent.dart';
import 'package:admin_dashboard/component/sideMenu.dart';
import 'package:admin_dashboard/config/responsive_dart.dart';
import 'package:admin_dashboard/config/size_config.dart';
import 'package:admin_dashboard/style/colors.dart';
import 'package:admin_dashboard/style/style.dart';
import 'package:admin_dashboard/component/AppBarAction.dart';
import 'package:admin_dashboard/component/history_details.dart';
import 'package:admin_dashboard/component/info_card.dart';
import 'package:admin_dashboard/component/middle_header.dart';
import 'package:admin_dashboard/component/paymentDetails.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _drawer = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawer,
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              actions: [if (Responsive.isMobile(context)) AppBarAction()],
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  _drawer.currentState?.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.black,
                ),
              ),
            )
          : const PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      drawer: const SizedBox(
        width: 120,
        child: SideMenu(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              flex: 10,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MiddleHeader(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          runSpacing: 20.0,
                          spacing: 20.0,
                          alignment: Responsive.isDesktop(context)
                              ? WrapAlignment.spaceBetween
                              : WrapAlignment.center,
                          children: const [
                            InfoCard(
                              icon: 'assets/credit-card.svg',
                              amount: "\$1200",
                              label: 'Transfer via \n Card number ',
                            ),
                            InfoCard(
                              icon: 'assets/transfer.svg',
                              amount: "\$120",
                              label: 'Transfer via \n online bank',
                            ),
                            InfoCard(
                              icon: 'assets/bank.svg',
                              amount: "\$1500",
                              label: 'Transfer via \nsame ',
                            ),
                            InfoCard(
                              icon: 'assets/invoice.svg',
                              amount: "\$1300",
                              label: 'Transfer via \n other bank ',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(
                                text: 'Balance',
                                size: 16,
                                fontWeight: FontWeight.w800,
                                color: AppColors.secondary,
                              ),
                              PrimaryText(
                                text: '\$1500',
                                size: 30,
                                fontWeight: FontWeight.w800,
                              )
                            ],
                          ),
                          PrimaryText(
                            text: 'Past 30 days ',
                            size: 16,
                            fontWeight: FontWeight.w800,
                            color: AppColors.secondary,
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      const SizedBox(
                        height: 180,
                        child: BarChartComponentWidget(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: 'History',
                            size: 30,
                            fontWeight: FontWeight.w800,
                          ),
                          PrimaryText(
                            text: 'Transaction of last 3 months ',
                            size: 16,
                            fontWeight: FontWeight.w800,
                            color: AppColors.secondary,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HistoryInfo(),
                            if (!Responsive.isDesktop(context)) PaymentDetails()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: const SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 30.0,
                    ),
                    child: Column(
                      children: [
                        AppBarAction(),
                        PaymentDetails(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
