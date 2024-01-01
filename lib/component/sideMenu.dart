import 'package:admin_dashboard/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  Widget buildSvgIconButton(String assetPath) {
    return IconButton(
      onPressed: () {
        // Your onPressed logic here
      },
      icon: SvgPicture.asset(
        assetPath,
        height: 20,
        width: 20,
        color: AppColors.iconGrey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: SvgPicture.asset('assets/mac-action.svg'),
                ),
              ),
              buildSvgIconButton('assets/home.svg'),
              buildSvgIconButton('assets/pie-chart.svg'),
              buildSvgIconButton('assets/clipboard.svg'),
              buildSvgIconButton('assets/credit-card.svg'),
              buildSvgIconButton('assets/trophy.svg'),
              buildSvgIconButton('assets/invoice.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
