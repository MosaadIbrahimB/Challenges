import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'control/check_connect_internet/cubit/connect_internet_cubit.dart';
import 'control/check_connect_internet/cubit/connect_internet_state.dart';
import 'widget/not_connect_internet_widget.dart';

class AppRoute {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';
  static const String layout = '/layout';
  static const String detailSalary = '/detailSalary';

  static Route onGenerateRoute(RouteSettings routSetting) {
    switch (routSetting.name) {
      case AppRoute.home:
      //   return goScreen(nameScreen: LayoutScreen(), settings: routSetting);
      // case AppRoute.splash:
      //   return goScreen(nameScreen: SplashScreen(), settings: routSetting);
      // case AppRoute.onboarding:
      //   return goScreen(nameScreen: OnboardingScreen(), settings: routSetting);
      // case AppRoute.login:
      //   return goScreen(nameScreen: LoginScreen(), settings: routSetting);
      // case AppRoute.layout:
      //   return goScreen(nameScreen: LayoutScreen(), settings: routSetting);
      // case AppRoute.detailSalary:
      //   return goScreen(
      //       nameScreen: DetailSalaryScreen(), settings: routSetting);

      default:
        return MaterialPageRoute(builder: (context) => _defaultScreen());
    }
  }

  static MaterialPageRoute goScreen({
    required Widget nameScreen,
    RouteSettings? settings,
  }) {
    return MaterialPageRoute(
      builder:
          (context) =>
          BlocBuilder<ConnectInternetCubit, ConnectInternetState>(
            builder: (context, state) {

              if(state is NotConnectedState){
                return Directionality(
                    textDirection: TextDirection.rtl,

                    child: NotConnectInterNetWidget());
              }

              return Directionality(
                textDirection: TextDirection.rtl,
                child: nameScreen,
              );
            },
          ),
      settings: settings,
    );
  }

  static _defaultScreen() {
    return Scaffold(body: Center(child: Text("Default screen")));
  }
}
