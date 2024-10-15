part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();
}

final class LoginStates extends LoginState {
  final bool? isAuth;

  const LoginStates({this.isAuth = false});

  LoginStates copyWith({bool? isAuth}) {
    return LoginStates(isAuth: isAuth ?? this.isAuth);
  }

  @override
  List<Object?> get props => [isAuth];
}
