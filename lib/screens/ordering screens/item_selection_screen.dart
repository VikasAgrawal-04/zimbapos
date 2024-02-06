import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/textfield/custom_textfield.dart';

class ItemSelectionScreen extends StatefulWidget {
  final String tableId;
  const ItemSelectionScreen({required this.tableId, super.key});

  @override
  State<ItemSelectionScreen> createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemSelectionCubit>(
      create: (context) => ItemSelectionCubit()..getTempBill(widget.tableId),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text('Billing Screen'),
        ),
        body: BlocBuilder<ItemSelectionCubit, ItemSelectionState>(
          builder: (context, state) {
            return Row(
              children: [
                groupTab(context, state),
                searchAndItemTab(context, state),
                detailsTab(context, state)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget groupTab(BuildContext context, ItemSelectionState state) {
    return Expanded(
      child: Container(
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
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Colors.yellow.shade600,
                collapsedBackgroundColor: Colors.white,
                onExpansionChanged: (value) async {
                  if (value) {
                    context
                        .read<ItemSelectionCubit>()
                        .getItemGroup(mainGroup.mainGroupId.toString());
                  }
                  context.read<ItemSelectionCubit>().changeTile(index);
                },
                children: List.generate(state.itemGroups.length, (index) {
                  final itemGroup = state.itemGroups[index];
                  return InkWell(
                    onTap: () {
                      context
                          .read<ItemSelectionCubit>()
                          .getAllItemsById(itemGroup.itemGroupId ?? "");
                    },
                    splashColor: Colors.transparent,
                    child: Container(
                      width: 100.w,
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide())),
                      child: Text(
                        itemGroup.itemGroupName.toString(),
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget searchAndItemTab(BuildContext context, ItemSelectionState state) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: .5.h),
        child: Column(children: [
          CustomTextFieldNew(
            hint: 'Search Items',
            hintStyle: Theme.of(context).textTheme.headlineSmall,
            style: Theme.of(context).textTheme.headlineSmall,
            isRequired: false,
            keyboardType: TextInputType.text,
            isNumber: false,
            textInputAction: TextInputAction.search,
            control: state.searchController,
            onChanged: context.read<ItemSelectionCubit>().searchItems,
          ),
          SizedBox(height: 4.h),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 1.w,
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 2.h,
                children: List.generate(state.filteredItems.length, (index) {
                  final item = state.filteredItems[index];
                  return GestureDetector(
                    onTap: () {
                      context
                          .read<ItemSelectionCubit>()
                          .onItemClick(action: OnClick.add, item: item);
                    },
                    child: Container(
                      width: 10.w,
                      height: 12.h,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            color: item.foodType == "V"
                                ? Colors.green[600]
                                : item.foodType == "E"
                                    ? Colors.yellow.shade600
                                    : Colors.red.shade700,
                          )),
                          Expanded(
                              flex: 20,
                              child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: .5.w),
                                  child: Center(child: Text(item.itemName))))
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget detailsTab(BuildContext context, ItemSelectionState state) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: CustomButtonNew(text: 'Customer', onTap: () {})),
                Expanded(child: CustomButtonNew(text: 'Pax', onTap: () {})),
                Expanded(child: CustomButtonNew(text: 'Waiter', onTap: () {}))
              ],
            ),
            SizedBox(height: 1.h),
            Container(
              height: 25.h,
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Current KOT',
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                        CustomButtonNew(
                          margin: EdgeInsets.symmetric(
                              vertical: .5.h, horizontal: 1.w),
                          width: 12.w,
                          text: 'Save KOT',
                          onTap: () async {
                            await context
                                .read<ItemSelectionCubit>()
                                .placeKot(widget.tableId);
                          },
                        )
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Center(child: Text('Item')),
                      ),
                      Expanded(
                        child: Center(child: Text('Price')),
                      ),
                      Expanded(
                        child: Center(child: Text('Qty')),
                      ),
                      Expanded(
                        child: Center(child: Text('Total')),
                      )
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Expanded(
                    child: ListView.builder(
                        itemCount: state.addedItems.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final addedItem = state.addedItems[index];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child:
                                      Center(child: Text(addedItem.itemName))),
                              Expanded(
                                  child: Center(
                                      child:
                                          Text(addedItem.itemRate.toString()))),
                              Expanded(
                                child: Row(children: [
                                  Expanded(
                                    child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<ItemSelectionCubit>()
                                              .onItemClick(
                                                  action: OnClick.subtract,
                                                  item: addedItem);
                                        },
                                        icon: const Icon(CupertinoIcons.minus)),
                                  ),
                                  Expanded(
                                      child: Center(
                                          child: Text(
                                              addedItem.quantity.toString()))),
                                  Expanded(
                                    child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<ItemSelectionCubit>()
                                              .onItemClick(
                                                  action: OnClick.add,
                                                  item: addedItem);
                                        },
                                        icon: const Icon(CupertinoIcons.add)),
                                  ),
                                ]),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                      (addedItem.quantity * addedItem.itemRate)
                                          .toString()),
                                ),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
            Container(
              height: 25.h,
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'KOTs',
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: state.tableBill.billLines?.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final billItem = state.tableBill.billLines?[index];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Center(
                                      child: Text(billItem?.itemName ?? "--",maxLines: 1,overflow: TextOverflow.ellipsis,))),
                              Expanded(
                                  child: Center(
                                      child: Text(
                                          billItem?.priceExTax.toString() ??
                                              "--"))),
                              Expanded(
                                  child: Center(
                                      child: Text(
                                          billItem?.quantity.toString() ??
                                              "--"))),
                              Expanded(
                                child: Center(
                                  child: Text(
                                      billItem?.lineTotal.toString() ?? "--"),
                                ),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
