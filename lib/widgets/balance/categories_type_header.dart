// ================= Categories Type Header =================
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:balance_me/firebase_wrapper/storage_repository.dart';
import 'package:balance_me/localization/resources/resources.dart';
import 'package:balance_me/common_models/category_model.dart';
import 'package:balance_me/widgets/balance/add_category_button.dart';
import 'package:balance_me/widgets/ring_pie_chart.dart';
import 'package:balance_me/global/utils.dart';
import 'package:balance_me/global/types.dart';
import 'package:balance_me/global/constants.dart' as gc;

class CategoriesTypeHeader extends StatefulWidget {
  const CategoriesTypeHeader(this._categories, {Key? key}) : super(key: key);

  final List<Category> _categories;

  @override
  State<CategoriesTypeHeader> createState() => _CategoriesTypeHeaderState();
}

class _CategoriesTypeHeaderState extends State<CategoriesTypeHeader> {
  UserStorage get userStorage => Provider.of<UserStorage>(context, listen: false);

  double _getTotalCategoriesListAmount(bool isExpected) {
    double totalAmount = 0;
    for (var category in widget._categories) {
      totalAmount += isExpected ? category.expected : category.amount;
    }
    return totalAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gc.categoryTypeHeaderTopPadding),
      child: Column(
        children: [
          RingPieChart(widget._categories, true, null),
          AddCategoryButton(widget._categories.first.isIncome),
          Card(
            shadowColor: gc.primaryColor.withOpacity(0.5),
            elevation: gc.cardElevationHeight,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Theme.of(context).toggleableActiveColor, width: gc.cardBorderWidth),
              borderRadius: BorderRadius.circular(gc.entryBorderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(gc.categoryTopPadding),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: gc.categoryAroundPadding),
                        child: Text(
                          Languages.of(context)!.strCurrent,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      Text(_getTotalCategoriesListAmount(false).toMoneyFormat(CurrencySign[userStorage.userData == null ? gc.defaultUserCurrency : userStorage.userData!.userCurrency]!),
                          style: TextStyle(
                              color: getColorForCard(widget._categories.elementAt(0).isIncome, _getTotalCategoriesListAmount(false), _getTotalCategoriesListAmount(true)),
                              fontSize: gc.fontSizeLoginImage,
                              fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(gc.categoryTopPadding),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: gc.categoryAroundPadding),
                        child: Text(Languages.of(context)!.expected,
                            style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      Text(_getTotalCategoriesListAmount(true).toMoneyFormat(CurrencySign[userStorage.userData == null ? gc.defaultUserCurrency : userStorage.userData!.userCurrency]!),
                          style: TextStyle(
                          color: Theme.of(context).toggleableActiveColor,
                          fontSize: gc.expectedFontSize,
                          fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
