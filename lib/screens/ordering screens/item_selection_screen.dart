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
          elevation: 1,
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
                          key: Key(state.selectedTile.toString()),
                          initiallyExpanded: state.selectedTile == index,
                          title: Text(
                            mainGroup.mainGroupName ?? "--",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          backgroundColor: Colors.yellow.shade600,
                          collapsedBackgroundColor: Colors.white,
                          onExpansionChanged: (value) async {
                            if (value) {
                              context.read<ItemSelectionCubit>().getItemGroup(
                                  mainGroup.mainGroupId.toString());
                            }
                            context
                                .read<ItemSelectionCubit>()
                                .changeTile(index);
                          },
                          children:
                              List.generate(state.itemGroups.length, (index) {
                            final itemGroup = state.itemGroups[index];
                            return Container(
                              width: 100.w,
                              decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide())),
                              child: Text(
                                itemGroup.itemGroupName.toString(),
                                style: Theme.of(context).textTheme.displaySmall,
                                textAlign: TextAlign.center,
                              ),
                            );
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
