import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

import '../../generated/assets.dart';
import '../../models/all_expenses_item_model.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> allExpensesItemModel = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      //asMap give you access to all entries in list and its key to control in each item by its index
      children: allExpensesItemModel.asMap().entries.map((e) {
        int index = e.key;
        var value = e.value;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  if(index!= selectedIndex){
                    selectedIndex=index;
                  }
                });
              },
              child: AllExpensesItem(
                allExpensesItemModel: value,
                isSelected: selectedIndex==index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
