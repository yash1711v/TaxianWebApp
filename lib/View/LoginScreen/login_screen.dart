
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxian_super_admin_web/style/pallet.dart';
import 'package:taxian_super_admin_web/widgets/TextField/text_field.dart';
import 'package:taxian_super_admin_web/widgets/customButton/custom_button.dart';

import '../../controlers/LoginControler/login_cubit.dart';
import '../../style/styles.dart';

class LoginScreen extends StatelessWidget {
  static const id = "/LoginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController adminId = TextEditingController();
    final TextEditingController password = TextEditingController();
    return Scaffold(
        body: Center(
            child: Container(
      height: 262,
      width: 325,
      decoration: const BoxDecoration(
          color: Pallet.primary,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),
          const Text(
            "SIGN IN",
            style: TextStyle(
                color: Pallet.secondary,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 22.h,
          ),
          SizedBox(
              width: 270,
              height: 33,
              child: Center(
                  child: CustomTextField(
                borderRadius: 5,
                controller: adminId,
                hintText: "Admin ID",
              ))),
          SizedBox(
            height: 18.h,
          ),
          SizedBox(
              width: 270,
              height: 33,
              child: Center(
                  child: CustomTextField(
                borderRadius: 5,
                controller: password,
                hintText: "Password",
              ))),
          SizedBox(
            height: 35.h,
          ),
          TextButton(
              onPressed: () {
                debugPrint("Pressed");
              },
              child: Text(
                "Forgot Password",
                style: Style.smallTextWithUnderLine.copyWith(
                  color: Pallet.secondary,
                ),
              )),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: 264,
            height: 34,
            child: CustomButton(
              onPressed: () {
                context.read<LoginCubit>().login(
                    adminId: adminId.text, password: password.text);
              },
              backgroundColor: Color(0xfff767676),
              child: Text("Sign in",
                  style: Style.h20.copyWith(
                    color: Pallet.secondary,
                    fontSize: 15
                  )),
            ),
          )
        ],
      ),
    )));
  }
}
