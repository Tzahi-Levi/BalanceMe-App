// ================= Category Complex =================
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:balance_me/localization/resources/resources.dart';
import 'package:balance_me/firebase_wrapper/storage_repository.dart';
import 'package:balance_me/common_models/transaction_model.dart';
import 'package:balance_me/common_models/category_model.dart';
import 'package:balance_me/widgets/balance/transaction_entry.dart';
import 'package:balance_me/widgets/balance/category_header.dart';
import 'package:balance_me/global/utils.dart';
import 'package:balance_me/global/constants.dart' as gc;

class CategoryComplex extends StatefulWidget {
  const CategoryComplex(this._category, {Key? key}) : super(key: key);

  final Category _category;

  @override
  _CategoryComplexState createState() => _CategoryComplexState();
}

class _CategoryComplexState extends State<CategoryComplex> {
  bool _isCategoryOpen = false;

  void _toggleCategory() {
    setState(() {
      _isCategoryOpen = !_isCategoryOpen;
    });
  }

  void _openCategory() {
    setState(() {
      _isCategoryOpen = true;
    });
  }

  void _removeTransaction(Transaction newTransaction) {
    Provider.of<UserStorage>(context, listen: false).removeTransaction(widget._category, newTransaction);
    displaySnackBar(context, Languages.of(context)!.strRemoveSucceeded.replaceAll("%", Languages.of(context)!.strTransaction));
  }

  List<Widget> getTransactions() {
    List<Widget> transactionWidgets = [];
    for (var transaction in widget._category.transactions) {
      transactionWidgets.add(TransactionEntry(widget._category, transaction, _removeTransaction, widget._category.isIncome));
    }
    return transactionWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: gc.cardElevationHeight,
      shadowColor:Theme.of(context).primaryColorDark.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            color: Colors.black38,
            width: gc.cardThinBorderWidth),
        borderRadius: BorderRadius.circular(gc.cardBorderRadius),
      ),
      child: Column(
        children: [
          CategoryHeader(widget._category, _isCategoryOpen, _toggleCategory, _openCategory),
          Visibility(
            visible: _isCategoryOpen,
            child: Column(
              children: getTransactions(),
            ),
          )
        ],
      ),
    );
  }
}
