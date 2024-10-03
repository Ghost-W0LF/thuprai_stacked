// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../services/dio_instance_service.dart';
import '../services/securestorage_service.dart';
import '../ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import '../ui/views/cart/repository/cartrepositoryimplementation_service.dart';
import '../ui/views/home/repository/homerepositort_implementation_service.dart';
import '../ui/views/home/service/home_service.dart';
import '../ui/views/login/repository/loginrepository_implementation_service.dart';
import '../ui/views/login/service/login_service.dart';
import '../ui/views/signup/repository/signup_repository_implementation_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => LoginService());
  locator.registerLazySingleton(() => DioInstanceService());
  locator.registerLazySingleton(() => LoginrepositoryImplementationService());
  locator.registerLazySingleton(() => SecurestorageService());
  locator.registerLazySingleton(() => HomeService());
  locator.registerLazySingleton(() => HomerepositortImplementationService());
  locator
      .registerLazySingleton(() => BookdetailrepositoryImplementationService());
  locator.registerLazySingleton(() => CartrepositoryimplementationService());
  locator.registerLazySingleton(() => SignupRepositoryImplementationService());
  locator.registerLazySingleton(() => SnackbarService());
}
