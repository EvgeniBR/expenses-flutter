import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'new shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'groceries', amount: 16.53, date: DateTime.now())
  ];

  // void _addNewTransaction(String txTitle, double txAmount) {
  //   final newTx = Transaction(
  //       id: DateTime.now().toString(),
  //       title: txTitle,
  //       amount: txAmount,
  //       date: DateTime.now());

  //   setState(() {
  //     _userTransactions.add(newTx);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TransactionList(_userTransactions),
    ]);
  }
}
