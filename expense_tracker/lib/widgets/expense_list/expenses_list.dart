import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense_model.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expensesList;

  const ExpensesList({required this.expensesList, super.key});

  @override
  Widget build(ctx) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, idx) => ExpenseItem(item: expensesList[idx]),
    );
  }
}
