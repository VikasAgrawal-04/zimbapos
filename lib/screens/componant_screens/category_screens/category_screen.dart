import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Stream<List<CategoryModel>> categoryStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.categoryRepository.streamCategory();
  }

  toggleFn(int id, bool value) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.categoryRepository.changeActive(id, value);
  }

  deleteFn(int id) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.categoryRepository.deleteCategory(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppScreen.createCategory.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<CategoryModel>>(
        stream: categoryStream(),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Categories'),
            );
          } else {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final rawData = data[index];
                  return ListTile(
                    title: Text(rawData.categoryName ?? "Category Name"),
                    subtitle: Text((data[index].isActive ?? false)
                        ? 'Active'
                        : "InActive"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => deleteFn(data[index].id),
                          icon: const Icon(
                            Icons.delete,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Switch.adaptive(
                          value: data[index].isActive ?? false,
                          onChanged: (value) => toggleFn(data[index].id, value),
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
