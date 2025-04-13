import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum ExpenseCategory{food, travel, leisure, work}

Map<ExpenseCategory, IconData> categoryIcons = {
  ExpenseCategory.food: Icons.fastfood,
  ExpenseCategory.travel: Icons.flight,
  ExpenseCategory.leisure: Icons.movie,
  ExpenseCategory.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseCategory expenseCategory;

  Expense({required this.title, required this.amount, required this.date, required this.expenseCategory}) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}
