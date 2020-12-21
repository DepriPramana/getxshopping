import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User(int id, String name, String alamat) = _User;
  factory User.fromJson(Map<String, Object> json) => _$UserFromJson(json);
}