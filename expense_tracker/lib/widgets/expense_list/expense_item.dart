import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense_model.dart';

class ExpenseItem extends StatelessWidget {
  final Expense item;
  const ExpenseItem({required this.item, super.key});

  @override
  Widget build(ctx) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(item.title),
            const SizedBox(height: 10),
            Row(
              children: [
                Text('\$${item.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[item.expenseCategory]),
                    const SizedBox(width: 8),
                    Text(item.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
