import 'package:zimbapos/repository/api_repository/area/area_api_repo.dart';
import 'package:zimbapos/repository/api_repository/bills/bill_api_repo.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/customer/customer_api_repo.dart';
import 'package:zimbapos/repository/api_repository/customer_category/customer_category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/payin/pay_in_api_repo.dart';
import 'package:zimbapos/repository/api_repository/payout/pay_out_api_repo.dart';
import 'package:zimbapos/repository/api_repository/shift/shift_api_repo.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';
import 'package:zimbapos/repository/api_repository/tax/tax_api_repo.dart';
import 'package:zimbapos/repository/api_repository/user/user_api_repo.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo.dart';

import 'pay_mod_master/pay_mod_master_repo.dart';
import 'rateset/rateset_api_repo.dart';

abstract class ApiRepo
    implements
        AreaApiRepo,
        TableApiRepo,
        CategoryApiRepo,
        WorkerApiRepo,
        MainGroupApiRepo,
        ItemGroupApiRepo,
        ItemApiRepo,
        CustomerCategoryApiRepo,
        BillApiRepo,
        TaxApiRepo,
        RateSetApiRepo,
        CustomerApiRepo,
        PayInApiRepo,
        PayOutApiRepo,
        PayModMasterApiRepo,
        ShiftApiRepo,
        UserApiRepo {}
