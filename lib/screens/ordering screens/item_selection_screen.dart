import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/widgets/containers/bill_detail_row.dart';
import 'package:zimbapos/widgets/containers/dotter_container.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';
import 'package:zimbapos/widgets/textfield/custom_textfield.dart';

class ItemSelectionScreen extends StatefulWidget {
  final String tableId;
  final String tableName;
  const ItemSelectionScreen(
      {required this.tableId, required this.tableName, super.key});

  @override
  State<ItemSelectionScreen> createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<ItemSelectionCubit>(
      create: (context) => ItemSelectionCubit()..getTempBill(widget.tableId),
      child: Scaffold(
        appBar: appBar(theme),
        body: BlocBuilder<ItemSelectionCubit, ItemSelectionState>(
          builder: (context, state) {
            return Column(
              children: [
                secondaryAppBar(theme.textTheme),
                Expanded(
                  child: Row(
                    children: [
                      groupTab(context, state, theme.textTheme),
                      searchAndItemTab(context, state, theme.textTheme),
                      detailsTab(context, state, theme.textTheme)
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget secondaryAppBar(TextTheme theme) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Image.asset(
                      "assets/icons/back.png",
                      height: 5.h,
                    )),
                SizedBox(width: 2.w),
                RichText(
                    text: TextSpan(
                        text: "Table no : ",
                        style: theme.headlineLarge,
                        children: [
                      TextSpan(
                          text: widget.tableName, style: theme.displayLarge)
                    ]))
              ],
            ),
            SizedBox(
              width: 30.w,
              child: Padding(
                padding: EdgeInsets.only(right: 1.w),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomButtonNew(
                      onTap: () {},
                      color: KColors.whiteColor,
                    )),
                    SizedBox(width: 1.w),
                    Expanded(
                        child: CustomButtonNew(
                      onTap: () {},
                      color: KColors.whiteColor,
                    )),
                    SizedBox(width: 1.w),
                    Expanded(
                        child: CustomButtonNew(
                      onTap: () {},
                      color: KColors.whiteColor,
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
        Divider(endIndent: 1.w, indent: 1.w)
      ],
    );
  }

  Widget groupTab(
      BuildContext context, ItemSelectionState state, TextTheme theme) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: .5.h),
        decoration: BoxDecoration(
            color: KColors.greyContainer,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0))),
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
                  style: theme.headlineMedium,
                ),
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
                      margin: EdgeInsets.only(bottom: .5.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.w, vertical: .5.h),
                      decoration: BoxDecoration(
                          color: KColors.greyItems,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: Text(
                        itemGroup.itemGroupName.toString(),
                        style: theme.bodyLarge,
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

  Widget searchAndItemTab(
      BuildContext context, ItemSelectionState state, TextTheme theme) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: .5.h),
        child: Column(children: [
          CustomTextFieldNew(
            hint: 'Search Items',
            hintStyle: theme.bodyLarge,
            style: theme.bodyLarge,
            isRequired: false,
            prefIcon: Icons.search,
            keyboardType: TextInputType.text,
            isNumber: false,
            textInputAction: TextInputAction.search,
            control: state.searchController,
            onChanged: context.read<ItemSelectionCubit>().searchItems,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
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
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 1.w, vertical: .5.h),
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<ItemSelectionCubit>()
                            .onItemClick(action: OnClick.add, item: item);
                      },
                      child: Container(
                        width: 15.w,
                        height: 12.h,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Stack(
                          children: [
                            Container(
                              width: 15.w,
                              height: 12.h,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4.0,
                                        spreadRadius: 0.0)
                                  ],
                                  color: item.foodType == "V"
                                      ? KColors.greenColor
                                      : item.foodType == "E"
                                          ? KColors.yellowColor
                                          : KColors.redColor,
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.elliptical(40, 25),
                                      bottomRight: Radius.elliptical(40, 25))),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 4,
                              top: 0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: KColors.whiteColor,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.elliptical(40, 25),
                                        bottomRight:
                                            Radius.elliptical(40, 25))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        item.itemName,
                                        style: theme.displayMedium,
                                      ),
                                      SizedBox(height: .2.h),
                                      Text(
                                        "₹ ${item.itemRate}",
                                        style: theme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
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

  Widget detailsTab(
      BuildContext context, ItemSelectionState state, TextTheme theme) {
    return Expanded(
        flex: 2,
        child: Container(
          decoration: BoxDecoration(
              color: KColors.greyContainer,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  offset: Offset(-4, 3),
                  blurRadius: 10,
                  spreadRadius: -2,
                ),
              ],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 2.w, right: 2.w, top: 1.h, bottom: 2.5.h),
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      border: Border.all(
                          color: const Color.fromRGBO(0, 0, 0, 0.2))),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
              const DottedLine(),
              Container(
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: .5.h),
                color: KColors.whiteColor,
                child: Column(
                  children: [
                    billDetailRow(
                        title: "Sub Total",
                        value:
                            state.tableBill.billHeader?.totalExTax.toString(),
                        theme: theme),
                    billDetailRow(
                        title: "Total Discount", value: "0.0", theme: theme),
                    GestureDetector(
                      onTap: context
                          .read<ItemSelectionCubit>()
                          .removeServiceAmount,
                      child: billDetailRow(
                          title: "Service Charge",
                          value: state.tableBill.billHeader?.serviceChargeAmount
                              .toString(),
                          serviceCharge: true,
                          theme: theme),
                    ),
                    billDetailRow(
                        title: "Tax",
                        value: state.tableBill.billHeader?.totalTaxAmount
                            .toStringAsFixed(2),
                        theme: theme),
                    const DottedLine(color: Color.fromRGBO(0, 0, 0, 0.2)),
                    billDetailRow(
                        title: "Grand Total",
                        value:
                            ((state.tableBill.billHeader?.totalAmount ?? 0.0) +
                                    (state.tableBill.billHeader
                                            ?.serviceChargeAmount ??
                                        0.0))
                                .toString(),
                        grandTotal: true,
                        theme: theme),
                    billDetailRow(
                        title: "Balance", value: "600.0", theme: theme),
                    const DottedLine(color: Color.fromRGBO(0, 0, 0, 0.2)),
                    billDetailRow(
                        title: "Total Count",
                        totalQuantity: true,
                        value: state.tableBill.billLines?.length.toString(),
                        theme: theme)
                  ],
                ),
              ),
              const DottedLine(),
              Container(
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: .5.h),
                color: KColors.whiteColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: CustomButtonNew(
                          color: KColors.blackColor,
                          text: "Print Discount",
                          onTap: () {},
                        )),
                        SizedBox(width: 1.w),
                        Expanded(
                            child: CustomButtonNew(
                          color: KColors.blackColor,
                          text: "Bill Discount",
                          onTap: () {},
                        )),
                        SizedBox(width: 1.w),
                        Expanded(
                            child: CustomButtonNew(
                          color: KColors.blackColor,
                          text: "Clear",
                          onTap: () {},
                        ))
                      ],
                    ),
                    SizedBox(height: 1.h),
                    CustomButtonNew(
                      text: "Proceed To Pay",
                      onTap: () {},
                    ),
                    SizedBox(height: .5.h),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
