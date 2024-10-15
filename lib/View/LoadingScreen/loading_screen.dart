import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:taxian_super_admin_web/View/LoginScreen/login_screen.dart';
import 'package:taxian_super_admin_web/controlers/loadingScreenControler/loading_screen_cubit.dart';
import 'package:taxian_super_admin_web/style/pallet.dart';

class LoadingScreen extends StatelessWidget {
  static const id = "/";

  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoadingScreenCubit, LoadingScreenState>(
      listener: (context, state) {
        if (state is LoadingScreenInitial) {
          if(state.isEndLoading ?? false) {
           Navigator.pushReplacementNamed(context, LoginScreen.id);
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: LoadingAnimationWidget.threeRotatingDots(
                color: Pallet.secondary, size: 100),
          ),
        );
      },
    );
  }
}
