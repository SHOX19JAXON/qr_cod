
import 'package:flutter/material.dart';
import 'package:qr_cod_bloc/homeWorc/secreen/history.dart';
import 'package:qr_cod_bloc/homeWorc/secreen/open_file_screen.dart';
import 'package:qr_cod_bloc/homeWorc/secreen/show_rq.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RouteNames.ShowQRRoute:
        return navigate(const ShowQR());
      case RouteNames.OpenFileRoute:
        return navigate(const OpenFile());
      case RouteNames.HistoryRoute:
        return navigate( History());

      default:
        return navigate(
          const Scaffold(
            body: Center(
              child: Text("This kind of rout does not exist!",style: TextStyle(color: Colors.blue),),
            ),
          ),
        );
    }
  }

  static navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

class RouteNames {

  static const String ShowQRRoute = "/ShowQRRoute";
  static const String OpenFileRoute = "/OpenFileRoute";
  static const String HistoryRoute = "/HistoryRoute";

}
