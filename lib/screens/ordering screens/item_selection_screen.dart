import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';

class ItemSelectionScreen extends StatefulWidget {
  const ItemSelectionScreen({super.key});

  @override
  State<ItemSelectionScreen> createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemSelectionCubit>(
      lazy: false,
      create: (context) => ItemSelectionCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Billing Screen'),
        ),
        body: BlocBuilder<ItemSelectionCubit, ItemSelectionState>(
          builder: (context, state) {
            return Row(
              children: [
                SizedBox(
                  width: 30.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(state.categories.length, (index) {
                      final category = state.categories[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 1.h),
                        child: Text(
                          category.categoryName ?? "--",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      );
                    }),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
