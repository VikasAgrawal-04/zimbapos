import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

final List<SFMappingModel> sfMapping = [
  SFMappingModel(
    scrnFnId: '001',
    scrnFnName: AppScreen.areasScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '002',
    scrnFnName: AppScreen.rateSetScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '003',
    scrnFnName: AppScreen.workerOverviewScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '004',
    scrnFnName: AppScreen.category.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '005',
    scrnFnName: AppScreen.discountScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '006',
    scrnFnName: AppScreen.taxesScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '007',
    scrnFnName: AppScreen.tableScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '008',
    scrnFnName: AppScreen.itemsScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '009',
    scrnFnName: AppScreen.itemGroupScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '010',
    scrnFnName: AppScreen.mainGroupScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '011',
    scrnFnName: AppScreen.vendorScreen.name,
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '012',
    scrnFnName: 'HomeScreen',
    type: MapType.screen,
  ),
  SFMappingModel(
    scrnFnId: '013',
    scrnFnName: 'Discount',
    type: MapType.function,
  ),
];
