import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense_model.dart';
import 'package:expense_tracker/widgets/expense_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 10.99,
      date: DateTime.now(),
      expenseCategory: ExpenseCategory.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          Text('CHARTTT'),
          Expanded(child: ExpensesList(expensesList: _registeredExpenses)),
        ],
      ),
    );
  }
}
