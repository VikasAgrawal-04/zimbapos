import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';

import '../../../models/global_models/tax_model.dart';

abstract class TaxApiRepo {
  Future<Either<Failure, List<TaxModel>>> fetchTaxList();
  Future<Either<Failure, Map<String, dynamic>>> createTax(TaxModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateTax(TaxModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteTax(String taxId);
}
