// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

// Project imports:
import 'package:future_mind_task/core/error/network_exceptions.dart';
import 'package:future_mind_task/features/home/data/data_sources/remote_data_source_impl.dart';

void main() {
  group('Remote Data Source Test', () {
    late Dio dio;
    late RemoteDataSourceImpl remoteDataSourceImpl;
    late DioAdapter dioAdapter;

    setUp(() {
      dio = Dio();
      dioAdapter = DioAdapter(dio: dio);
      remoteDataSourceImpl = RemoteDataSourceImpl(dio);
    });

    test('should throw RestApiException when the response code is not 200',
        () async {
      // Given
      dioAdapter.onGet(
          'https://recruitment-task.futuremind.dev/recruitment-task',
          (request) => request.reply(400, {'message': 'Bad Request'}));

      // Then
      expect(() async => await remoteDataSourceImpl.getData(),
          throwsA(const TypeMatcher<RestApiException>()));
    });
  });
}
