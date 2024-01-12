import 'package:shelf/shelf.dart';
import 'package:zimbapos/repository/isar_service.dart';

class WorkerController {
  IsarService dbCubit;
  WorkerController(this.dbCubit);
  Response createWorker(Request request) {
    return Response.ok("Yes Your AreGOdd going!");
  }
}
