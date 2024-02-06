import '../statistics_page/widgets/viewhierarchy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key})
      : super(
          key: key,
        );

  @override
  StatisticsPageState createState() => StatisticsPageState();
}

class StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin<StatisticsPage> {
  @override
  bool get wantKeepAlive => true;
  // ignore: must_call_super
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: _buildTransactionRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionRow(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction",
                      style: CustomTextStyles.titleMedium18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Sell All",
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 21.v,
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ViewhierarchyItemWidget();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
