// ================= Transaction Model =================
import 'package:balance_me/global/types.dart';
import 'package:balance_me/global/utils.dart';

class Transaction {
  Transaction(this.name, this.date, this.amount, this.description, this.isConstant);

  Transaction.fromJson(Json transactionJson) {
    name = transactionJson["name"];
    date = transactionJson["date"];
    amount = transactionJson["amount"].toDouble();
    description = transactionJson["description"];
    isConstant = transactionJson["isConstant"];
  }

  late String name;
  late String date;
  late double amount;
  late String description;
  late bool isConstant;

  Json toJson() => {
    'name': name,
    'date': date,
    'amount': amount,
    'description': description,
    'isConstant': isConstant
  };

  @override
  bool operator ==(other) => other is Transaction && name.compareStrings(other.name) == 0;

  int compareTo(Transaction other){
    int comparePerDate = date.toDateTime().compareTo(other.date.toDateTime());
    return (comparePerDate == 0) ? name.compareStrings(other.name) : comparePerDate;
  }
}
