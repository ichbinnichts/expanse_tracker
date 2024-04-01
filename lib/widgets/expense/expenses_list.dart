import 'package:expanse_tracker/models/expense.dart';
import 'package:expanse_tracker/widgets/expense/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;

  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, i) => Dismissible(
        key: ValueKey(expenses[i]),
        onDismissed: (direction) {
          onRemoveExpense(expenses[i]);
        },
        child: ExpenseItem(expense: expenses[i]),
      ),
    );
  }
}
