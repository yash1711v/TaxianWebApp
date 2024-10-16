import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../InjectionContainer/injection_Container.dart';
import '../../cache/shared_preference.dart';
import '../../repo/repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginStates());
  void login({required String adminId, required String password}) async {

    locator<Repo>().login(adminId: adminId, password: password).then((value) {
      if (value['accessToken'] != null && value['accessToken'] != "") {
        locator<Pref>().pref.setString("Token", value['accessToken']);
        emit(const LoginStates(isAuth: true));
      } else {
        emit(const LoginStates(isAuth: false));
      }
    });
  }
}
