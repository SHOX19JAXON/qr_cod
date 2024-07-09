
import 'package:get_it/get_it.dart';
import 'package:qr_cod_bloc/data/repsitories/product_repository.dart';

var getIt = GetIt.I;

void setUp() {
  getIt.registerSingleton<ProductRepository>(ProductRepository());
}
