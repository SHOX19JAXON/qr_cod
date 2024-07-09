

import 'package:flutter/material.dart';

import 'package:qr_cod_bloc/homeWorc/routes.dart';




import '../utils/images/app_images.dart';
import '../utils/size/size_utils.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _init() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );

    if(
    RouteNames.HistoryRoute ==null

    ){
    print("uuuuuuuuuuuuuuuuuuuuuuuuuu");}
    else{
      Navigator.pushReplacementNamed(context, RouteNames.HistoryRoute);
    }



  }

  @override
  void initState() {
    _init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return  Scaffold(
      body: Center(
        child: Image.asset(AppImages.delete,width: 200,height: 200,),
      ),
    );
  }
}
