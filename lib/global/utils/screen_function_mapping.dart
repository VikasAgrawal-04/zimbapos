// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class SFMapping {
  final String id;
  final String functionName;
  final FunctionType type;
  final bool canView;
  final bool canEdit;
  SFMapping({
    required this.id,
    required this.functionName,
    required this.type,
    this.canView = true,
    this.canEdit = true,
  });

  @override
  String toString() {
    return 'SFMapping(id: $id, functionName: $functionName, type: $type, canView: $canView, canEdit: $canEdit)';
  }
}

enum FunctionType {
  screen,
  functionality,
}

final List<SFMapping> sfMapping = [
  SFMapping(
    id: '001',
    functionName: AppScreen.areasScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '002',
    functionName: AppScreen.rateSetScreen.path,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '003',
    functionName: AppScreen.workerOverviewScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '004',
    functionName: AppScreen.category.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '005',
    functionName: AppScreen.discountScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '006',
    functionName: AppScreen.taxesScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '007',
    functionName: AppScreen.tableScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '008',
    functionName: AppScreen.itemsScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '009',
    functionName: AppScreen.itemGroupScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '010',
    functionName: AppScreen.mainGroupScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '011',
    functionName: AppScreen.vendorScreen.name,
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '012',
    functionName: 'HomeScreen',
    type: FunctionType.screen,
  ),
  SFMapping(
    id: '013',
    functionName: 'Discount',
    type: FunctionType.functionality,
  ),
];
