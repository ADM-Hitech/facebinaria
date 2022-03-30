import 'package:facebinaria/services/navigation.service.dart';
import 'package:get_it/get_it.dart';

GetIt appService = GetIt.instance;

void setupService() {
  appService.registerLazySingleton(() => NavigationService());
}