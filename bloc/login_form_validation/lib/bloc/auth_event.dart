part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthLoginReqested extends AuthEvent {
  final String email;
  final String password;

  AuthLoginReqested({required this.email, required this.password});
}

final class AuthLogoutRequested extends AuthEvent {}
