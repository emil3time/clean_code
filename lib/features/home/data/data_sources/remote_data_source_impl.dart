// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:future_mind_task/core/extensions/dio_extensions.dart';
import 'package:future_mind_task/features/home/data/data_sources/remote_data_source.dart';
import 'package:future_mind_task/features/home/data/item_dto.dart';
import '../../../../core/error/network_exceptions.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio _dio;

  RemoteDataSourceImpl(this._dio);

  @override
  Future<List<ItemDTO>> getData() async {
    try {
      final Response response = await _dio
          .get('https://recruitment-task.futuremind.dev/recruitment-task');

      if (response.statusCode == 200) {
        final List<ItemDTO> itemDOTs =
            List<Map<String, dynamic>>.from(response.data)
                .map((e) => ItemDTO.fromJson(e))
                .toList();

        return itemDOTs;
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoInternetConnection) {
        throw NoConnectionException();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
