import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  TransactionList(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 2, color: Color.fromARGB(255, 210, 210, 210)),
                    ),
                  ),
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  child: Text(
                    "Rp" + userTransactions[index].amount.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  width: 284,
                  height: 100,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userTransactions[index].title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat.yMMMd().format(userTransactions[index].date),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: userTransactions.length,
      ),
    );
  }
}
