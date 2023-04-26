// Project imports:
import '../item_dto.dart';

abstract class RemoteDataSource {
  Future<List<ItemDTO>> getData();
}
