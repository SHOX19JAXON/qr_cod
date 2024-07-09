import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_cod_bloc/bloc/product_bloc.dart';
import 'package:qr_cod_bloc/homeWorc/tabs/tab_screen.dart';
import 'package:qr_cod_bloc/screens/product_screen.dart';
import 'package:qr_cod_bloc/services/service_locator.dart';

import 'homeWorc/routes.dart';
import 'homeWorc/sples_screen.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProductBloc()..add(LoadProducts()))
      ],
      child: MaterialApp(
        // initialRoute:
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home:TabScreen()
        // SplashScreen()
        // TabScreen()
        // ProductScreen(),
      ),
    );
  }
}