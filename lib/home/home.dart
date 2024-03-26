import 'package:expanse_tracker/widgets/expense/expenses_list.dart';
import 'package:expanse_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter course',
      amount: 20.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Nest course',
      amount: 20.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Fast food',
      amount: 35.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Book',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leisure,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense tracker'),
        backgroundColor: Colors.blue,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
