import 'package:dio/dio.dart';
import 'package:riverpod_api/modules/api_client_helpers/api_helper.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class AppApis {
  factory AppApis() => _AppApis(ApiHelper.client);

  // @POST("/signup")
  // Future<dynamic> postRegister(@Body() RegisterUserDto registerUserDto);

  // @POST('/login')
  // Future<dynamic> postLogin(@Body() LoginUserDto loginUserDto);
}
