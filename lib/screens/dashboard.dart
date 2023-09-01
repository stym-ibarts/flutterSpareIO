import 'package:flutter/material.dart';
import 'package:sparewo/utils/colors.dart';
import 'package:sparewo/utils/context.dart';
import 'package:sparewo/widgets/expense_card.dart';
import 'package:sparewo/widgets/four_tiles.dart';
import 'package:sparewo/widgets/latest_orders.dart';
import 'package:sparewo/widgets/progressor.dart';
import 'package:sparewo/widgets/revenue_card.dart';
import 'package:sparewo/widgets/topbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.875,
      color: AppColors.white,
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ const TopBar(   title: 'Overview'),
            Column(
              children: [
                const Row(
                  children: [
                    FourTiles(),
                  ],
                ),
                const Row(
                  children: [
                    Expanded(child: ExpensesCard())
                  ],
                ),
                const Row(
                  children: [
                    TotalRevenueCard(),
                    // Expanded(child: Progressor())
                  ],
                ),
                const Row(
                  children: [
                    // TotalRevenueCard(),
                    Expanded(child: Progressor())
                  ],
                ),
                LatestOrders(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
