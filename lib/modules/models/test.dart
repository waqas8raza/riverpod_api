import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

@JsonSerializable()
class LoginUserDto {
  final String email;
  final String password;

  LoginUserDto({
    required this.email,
    required this.password,
  });

  factory LoginUserDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserDtoToJson(this);
}
