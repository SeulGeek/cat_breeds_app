import 'package:cat_breeds_app/api/response/cat_breeds_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ApiClient;

  @GET('/breeds')
  Future<CatBreedsResponse> getCatBreeds({
    @Query('page') int? page,
  });
}
