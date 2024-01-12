import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class CustomerCategoryScreen extends StatefulWidget {
  const CustomerCategoryScreen({super.key});

  @override
  State<CustomerCategoryScreen> createState() => _CustomerCategoryScreenState();
}

class _CustomerCategoryScreenState extends State<CustomerCategoryScreen> {
  Stream<List<CustomerCategoryModel>> custCatStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.customerRepository.streamCustCat();
  }

  toggleFn(int id, bool value) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.customerRepository.changeActive(id, value);
  }

  deleteFn(int id) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.customerRepository.deleteCusCat(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Category'),
        actions: [
          IconButton(
            onPressed: () =>
                context.push(AppScreen.createCustomerCategory.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<CustomerCategoryModel>>(
        stream: custCatStream(),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Category'),
            );
          } else {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final rawData = data[index];
                  return ListTile(
                    title: Text(rawData.custCategoryName ?? "Category Name"),
                    subtitle: Text(
                        (rawData.isActive ?? false) ? 'Active' : "InActive"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("${rawData.custCategoryDiscount ?? '0.0'}%"),
                        IconButton(
                          onPressed: () => deleteFn(rawData.id),
                          icon: const Icon(
                            Icons.delete,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Switch.adaptive(
                          value: rawData.isActive ?? false,
                          onChanged: (value) => toggleFn(rawData.id, value),
                        ),
                      ],
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
