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
      create: (context) => ItemSelectionCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Billing Screen'),
        ),
        body: BlocBuilder<ItemSelectionCubit, ItemSelectionState>(
          builder: (context, state) {
            return Row(
              children: [
                Container(
                  width: 25.w,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(state.mainGroups.length, (index) {
                      final mainGroup = state.mainGroups[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 1.h),
                        child: ExpansionTile(
                          title: Text(
                            mainGroup.mainGroupName ?? "--",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          onExpansionChanged: (value) async {
                            if (value) {
                             await context.read<ItemSelectionCubit>().getItemGroup(
                                  mainGroup.mainGroupId.toString());
                            }
                          },
                          children:
                              List.generate(state.itemGroups.length, (index) {
                            final itemGroup = state.itemGroups[index];
                            return Text(itemGroup.itemGroupName.toString());
                          }),
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
