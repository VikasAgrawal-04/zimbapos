import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/widgets/containers/bill_detail_row.dart';
import 'package:zimbapos/widgets/containers/dotted_vertical_line.dart';
import 'package:zimbapos/widgets/containers/dotter_line.dart';
import 'package:zimbapos/widgets/containers/title_container.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/dropdown/custom_dropdown.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';
import 'package:zimbapos/widgets/textfield/custom_textfield.dart';
import 'package:zimbapos/widgets/textfield/date_textfield.dart';

class ItemSelectionScreen extends StatefulWidget {
  final String tableId;
  final String tableName;
  const ItemSelectionScreen(
      {required this.tableId, required this.tableName, super.key});

  @override
  State<ItemSelectionScreen> createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen>
    with TickerProviderStateMixin {
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
                secondaryAppBar(theme.textTheme, state, context),
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

  Widget secondaryAppBar(
      TextTheme theme, ItemSelectionState state, BuildContext mainContext) {
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
              width: 32.w,
              child: Padding(
                padding: EdgeInsets.only(right: 1.w),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomButtonNew(
                      height: 6.h,
                      text: "Customer",
                      onTap: () {
                        TabController tabController =
                            TabController(length: 2, vsync: this);
                        final key = GlobalKey<FormState>();
                        final name = TextEditingController();
                        final mobile = TextEditingController();
                        final email = TextEditingController();
                        final gstNo = TextEditingController();
                        final dob = TextEditingController();
                        final ad = TextEditingController();
                        String? cusCatId;
                        showDialog(
                            context: mainContext,
                            builder: (BuildContext secondContext) {
                              return AlertDialog(
                                title: Text(
                                  "Customer Details",
                                  style: theme.displayMedium,
                                ),
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: 25.w,
                                    height: 38.h,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TabBar(
                                          controller: tabController,
                                          tabs: [
                                            Tab(
                                                child: Text('Personal Info',
                                                    style:
                                                        theme.displayMedium)),
                                            Tab(
                                                child: Text('Additional Info',
                                                    style:
                                                        theme.displayMedium)),
                                          ],
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            controller: tabController,
                                            children: [
                                              Form(
                                                key: key,
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 2.h),
                                                    CustomTextFieldNew(
                                                        prefIcon: Icons.person,
                                                        control: name,
                                                        hint:
                                                            "Enter Customer Name",
                                                        isRequired: true,
                                                        keyboardType:
                                                            TextInputType.name,
                                                        isNumber: false,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next),
                                                    SizedBox(height: 2.h),
                                                    CustomTextFieldNew(
                                                        control: mobile,
                                                        prefIcon: Icons.phone,
                                                        hint:
                                                            "Enter Customer Mobile Number",
                                                        isRequired: true,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        isNumber: true,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next),
                                                    SizedBox(height: 2.h),
                                                    CustomTextFieldNew(
                                                        control: email,
                                                        prefIcon: Icons.email,
                                                        hint:
                                                            "Enter Customer Email",
                                                        isRequired: false,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        isNumber: true,
                                                        onEditingComplete: () {
                                                          if (key.currentState!
                                                              .validate()) {
                                                            tabController
                                                                .animateTo(1);
                                                          }
                                                        },
                                                        textInputAction:
                                                            TextInputAction
                                                                .next),
                                                    const Spacer(),
                                                    CustomButtonNew(
                                                      width: 20.w,
                                                      margin: EdgeInsets.only(
                                                          bottom: 1.h),
                                                      height: 4.5.h,
                                                      onTap: () {
                                                        if (key.currentState!
                                                            .validate()) {
                                                          tabController
                                                              .animateTo(1);
                                                        }
                                                      },
                                                      text: "Next",
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(height: 1.h),
                                                  CustomTextFieldNew(
                                                      prefIcon: Icons.numbers,
                                                      control: gstNo,
                                                      hint: "GST Number",
                                                      isRequired: false,
                                                      keyboardType:
                                                          TextInputType.name,
                                                      isNumber: false,
                                                      textInputAction:
                                                          TextInputAction.next),
                                                  SizedBox(height: 1.h),
                                                  DateTextField(
                                                    value: dob.text,
                                                    hintText: "Customer DOB",
                                                    lasDate: DateTime.now(),
                                                    onChanged: (value) {
                                                      dob.text = value;
                                                    },
                                                  ),
                                                  SizedBox(height: 1.h),
                                                  DateTextField(
                                                    value: ad.text,
                                                    hintText:
                                                        "Customer Anniversay Date",
                                                    lasDate: DateTime.now(),
                                                    onChanged: (value) {
                                                      ad.text = value;
                                                    },
                                                  ),
                                                  SizedBox(height: 1.h),
                                                  BlocBuilder<
                                                      CustomerCategoryScreenCubit,
                                                      CustomerCategoryScreenState>(
                                                    builder: (context, state) {
                                                      return CustomDropDown<
                                                          String>(
                                                        title:
                                                            "Customer Category",
                                                        items: state
                                                            .customerCategories
                                                            .map((cusCat) =>
                                                                cusCat
                                                                    .custCategoryName ??
                                                                'error')
                                                            .toList(),
                                                        itemValues: state
                                                            .customerCategories
                                                            .map((e) =>
                                                                e.custCategoryId ??
                                                                "null")
                                                            .toList(),
                                                        value: cusCatId,
                                                        hint:
                                                            "Choose a customer category",
                                                        onChanged: (value) {
                                                          if (value != null) {
                                                            cusCatId = value;
                                                          }
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  const Spacer(),
                                                  CustomButtonNew(
                                                    width: 20.w,
                                                    margin: EdgeInsets.only(
                                                        bottom: 1.h),
                                                    height: 4.5.h,
                                                    onTap: () {
                                                      context.pop();
                                                    },
                                                    text: "Done",
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      color: KColors.whiteColor,
                    )),
                    SizedBox(width: 1.w),
                    Expanded(
                        child: CustomButtonNew(
                      height: 6.h,
                      text: "Pax\n${state.pax ?? 0}",
                      onTap: () {
                        showDialog(
                            context: mainContext,
                            builder: (BuildContext secondContext) {
                              final controller = TextEditingController();
                              final key = GlobalKey<FormState>();
                              return AlertDialog(
                                backgroundColor: KColors.greyContainer,
                                title: Text(
                                  "PAX",
                                  style: theme.displayMedium,
                                ),
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: 30.w,
                                    child: Form(
                                        key: key,
                                        child: Column(
                                          children: [
                                            CustomTextFieldNew(
                                                hint:
                                                    "Total Customer At This Table",
                                                isRequired: true,
                                                keyboardType:
                                                    const TextInputType
                                                        .numberWithOptions(),
                                                isNumber: true,
                                                control: controller,
                                                onEditingComplete: () {
                                                  mainContext
                                                      .read<
                                                          ItemSelectionCubit>()
                                                      .enterPax(
                                                          controller.text);
                                                  context.pop();
                                                },
                                                textInputAction:
                                                    TextInputAction.done),
                                            SizedBox(height: 1.h),
                                            CustomButtonNew(
                                              onTap: () {
                                                mainContext
                                                    .read<ItemSelectionCubit>()
                                                    .enterPax(controller.text);
                                                context.pop();
                                              },
                                              text: "Done",
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                              );
                            });
                      },
                      color: KColors.whiteColor,
                    )),
                    SizedBox(width: 1.w),
                    Expanded(
                        child: CustomButtonNew(
                      height: 6.h,
                      text: "Waiter\n${state.waiterName ?? "Name"}",
                      onTap: () {
                        showDialog(
                            context: mainContext,
                            builder: (BuildContext secondContext) {
                              return AlertDialog(
                                backgroundColor: KColors.greyContainer,
                                title: Text(
                                  "Waiters",
                                  style: theme.displayMedium,
                                ),
                                content: SizedBox(
                                  width: 30.w,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: List.generate(
                                          state.waiters.length, (index) {
                                        final waiter = state.waiters[index];
                                        return InkWell(
                                          onTap: () {
                                            mainContext
                                                .read<ItemSelectionCubit>()
                                                .selectWaiter(
                                                    waiter.workerId.toString(),
                                                    waiter.workerName
                                                        .toString());
                                            context.pop();
                                          },
                                          child: Container(
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                                color: KColors.greyItems,
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(12),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12))),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1.w,
                                                vertical: .5.h),
                                            child: Text(waiter.workerName,
                                                style: theme.bodyLarge),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
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
                  style: theme.labelLarge,
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
            child: SizedBox(
              width: 100.w,
              child: SingleChildScrollView(
                child: Wrap(
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
                          width: 14.w,
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
                                        bottomRight:
                                            Radius.elliptical(40, 25))),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
            ),
          )
        ]),
      ),
    );
  }

  Widget detailsTab(
      BuildContext context, ItemSelectionState state, TextTheme theme) {
    return Expanded(
        flex: 3,
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
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                      left: 2.5.w, right: 2.5.w, top: 1.h, bottom: 2.5.h),
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
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                  child: Text(
                                'Items',
                                style: theme.displayMedium,
                              )),
                            ),
                            Expanded(
                              child: Center(
                                  child: Text(
                                'Price',
                                style: theme.displayMedium,
                              )),
                            ),
                            Expanded(
                              child: Center(
                                  child: Text(
                                'Qty',
                                style: theme.displayMedium,
                              )),
                            ),
                            Expanded(
                              child: Center(
                                  child: Text(
                                'Total',
                                style: theme.displayMedium,
                              )),
                            )
                          ],
                        ),
                      ),
                      titleContainer(title: "Current KoT", theme: theme),
                      Expanded(
                        flex: 3,
                        child: ListView.builder(
                            itemCount: state.addedItems.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final addedItem = state.addedItems[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: .5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      addedItem.itemName,
                                      style: theme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      addedItem.itemRate.toString(),
                                      style: theme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ))),
                                    Expanded(
                                      child: Row(children: [
                                        Expanded(
                                          child: InkWell(
                                              onTap: () {
                                                context
                                                    .read<ItemSelectionCubit>()
                                                    .onItemClick(
                                                        action:
                                                            OnClick.subtract,
                                                        item: addedItem);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: .7.w,
                                                    vertical: .3.h),
                                                decoration: BoxDecoration(
                                                    color: KColors.whiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: Icon(
                                                    CupertinoIcons.minus,
                                                    size: 11.sp),
                                              )),
                                        ),
                                        Expanded(
                                            child: Center(
                                                child: Text(
                                          addedItem.quantity.toString(),
                                          style: theme.titleMedium?.copyWith(
                                              fontWeight: FontWeight.w500),
                                        ))),
                                        Expanded(
                                            child: InkWell(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          ItemSelectionCubit>()
                                                      .onItemClick(
                                                          action: OnClick.add,
                                                          item: addedItem);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: .7.w,
                                                      vertical: .3.h),
                                                  decoration: BoxDecoration(
                                                      color: KColors.whiteColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Icon(
                                                      CupertinoIcons.add,
                                                      size: 11.sp),
                                                ))),
                                      ]),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            (addedItem.quantity *
                                                    addedItem.itemRate)
                                                .toString(),
                                            style: theme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(width: .6.w),
                                          IconButton(
                                              onPressed: () {
                                                context
                                                    .read<ItemSelectionCubit>()
                                                    .deleteProduct(addedItem);
                                              },
                                              icon: Image.asset(
                                                'assets/icons/delete.png',
                                                height: 3.3.h,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: .5.h, horizontal: 1.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomButtonNew(
                              shadows: const [],
                              height: 3.5.h,
                              width: 6.w,
                              text: 'Save KoT',
                              onTap: () async {
                                await context
                                    .read<ItemSelectionCubit>()
                                    .placeKot(widget.tableId);
                              },
                            ),
                            SizedBox(width: 1.w),
                            CustomButtonNew(
                              height: 3.5.h,
                              width: 6.w,
                              onTap:
                                  context.read<ItemSelectionCubit>().clearKot,
                              color: KColors.blackColor,
                              text: 'Clear KoT',
                              shadows: const [],
                            )
                          ],
                        ),
                      ),
                      titleContainer(title: "KoT", theme: theme),
                      Expanded(
                        flex: 2,
                        child: ListView.builder(
                            itemCount: (state.tableBill.billLines ?? []).length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final billItem =
                                  state.tableBill.billLines?[index];
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Center(
                                          child: Text(
                                    billItem?.itemName ?? "--",
                                    maxLines: 1,
                                    style: theme.titleMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ))),
                                  Expanded(
                                      child: Center(
                                          child: Text(
                                              billItem?.priceExTax.toString() ??
                                                  "--",
                                              style: theme.titleMedium))),
                                  Expanded(
                                      child: Center(
                                          child: Text(
                                              billItem?.quantity.toString() ??
                                                  "--",
                                              style: theme.titleMedium))),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                            billItem?.lineTotal.toString() ??
                                                "--",
                                            style: theme.titleMedium),
                                        SizedBox(width: .6.w),
                                        IconButton(
                                            onPressed: () {
                                              context
                                                  .read<ItemSelectionCubit>()
                                                  .deleteKotItem(widget.tableId,
                                                      billItem!.itemId);
                                            },
                                            icon: Image.asset(
                                              'assets/icons/delete.png',
                                              height: 3.3.h,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
              const DottedLine(),
              Expanded(
                child: Container(
                  width: 100.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
                  color: KColors.whiteColor,
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          billDetailRow(
                              title: "Sub Total",
                              value: state.tableBill.billHeader?.totalExTax
                                  .toString(),
                              theme: theme),
                          billDetailRow(
                              title: "Total Discount",
                              value: "0.0",
                              theme: theme),
                          GestureDetector(
                            onTap: context
                                .read<ItemSelectionCubit>()
                                .removeServiceAmount,
                            child: billDetailRow(
                                title: "Service Charge",
                                value: state
                                    .tableBill.billHeader?.serviceChargeAmount
                                    .toStringAsFixed(2),
                                serviceCharge: true,
                                theme: theme),
                          ),
                          billDetailRow(
                              title: "Tax",
                              value: state.tableBill.billHeader?.totalTaxAmount
                                  .toStringAsFixed(2),
                              theme: theme),
                        ],
                      )),
                      const DottedVerticalLine(),
                      SizedBox(width: 1.w),
                      Expanded(
                          child: Column(
                        children: [
                          billDetailRow(
                              title: "Grand Total",
                              value:
                                  ((state.tableBill.billHeader?.totalAmount ??
                                              0.0) +
                                          (state.tableBill.billHeader
                                                  ?.serviceChargeAmount ??
                                              0.0))
                                      .toStringAsFixed(2),
                              grandTotal: true,
                              theme: theme),
                          billDetailRow(
                              title: "Balance", value: "600.0", theme: theme),
                          const DottedLine(color: Color.fromRGBO(0, 0, 0, 0.2)),
                          billDetailRow(
                              title: "Total Count",
                              totalQuantity: true,
                              value:
                                  state.tableBill.billLines?.length.toString(),
                              theme: theme)
                        ],
                      ))
                    ],
                  ),
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
                          text: "Print Bill",
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
                      onTap: () async {
                        await context
                            .read<ItemSelectionCubit>()
                            .finalBill(widget.tableId);
                      },
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
