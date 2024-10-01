import 'package:mockito/annotations.dart';

import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/ui/views/login/service/login_service.dart';
import 'package:thuprai_stacked/services/dio_instance_service.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/home/service/home_service.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/bookdetail/repository/bookdetailrepository_implementation_service.dart';
import 'package:thuprai_stacked/ui/views/cart/repository/cartrepositoryimplementation_service.dart';
import 'package:thuprai_stacked/ui/views/signup/repository/signup_repository_implementation_service.dart';
// @stacked-import

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<LoginService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DioInstanceService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<LoginrepositoryImplementationService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<SecurestorageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<HomeService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<HomerepositortImplementationService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BookdetailrepositoryImplementationService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<CartrepositoryimplementationService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DebounceService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DebounceService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<SignupRepositoryImplementationService>(
      onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterLoginService();
  getAndRegisterDioInstanceService();
  getAndRegisterLoginrepositoryImplementationService();
  getAndRegisterSecurestorageService();
  getAndRegisterHomeService();
  getAndRegisterHomerepositortImplementationService();
  getAndRegisterBookdetailrepositoryImplementationService();
  getAndRegisterCartrepositoryimplementationService();
  getAndRegisterDebounceService();
  getAndRegisterDebounceService();
  getAndRegisterSignupRepositoryImplementationService();
// @stacked-mock-register
}

void getAndRegisterDebounceService() {}

class DebounceService {}

void getAndRegisterNavigationService() {}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  locator.registerSingleton<BottomSheetService>(service as BottomSheetService);
  return service;
}

extension on MockBottomSheetService {}

class MockBottomSheetService {}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service as DialogService);
  return service;
}

class MockDialogService {}

MockLoginService getAndRegisterLoginService() {
  _removeRegistrationIfExists<LoginService>();
  final service = MockLoginService();
  locator.registerSingleton<LoginService>(service as LoginService);
  return service;
}

class MockLoginService {}

MockDioInstanceService getAndRegisterDioInstanceService() {
  _removeRegistrationIfExists<DioInstanceService>();
  final service = MockDioInstanceService();
  locator.registerSingleton<DioInstanceService>(service as DioInstanceService);
  return service;
}

class MockDioInstanceService {}

MockLoginrepositoryImplementationService
    getAndRegisterLoginrepositoryImplementationService() {
  _removeRegistrationIfExists<LoginrepositoryImplementationService>();
  final service = MockLoginrepositoryImplementationService();
  locator.registerSingleton<LoginrepositoryImplementationService>(
      service as LoginrepositoryImplementationService);
  return service;
}

class MockLoginrepositoryImplementationService {}

MockSecurestorageService getAndRegisterSecurestorageService() {
  _removeRegistrationIfExists<SecurestorageService>();
  final service = MockSecurestorageService();
  locator
      .registerSingleton<SecurestorageService>(service as SecurestorageService);
  return service;
}

class MockSecurestorageService {}

MockHomeService getAndRegisterHomeService() {
  _removeRegistrationIfExists<HomeService>();
  final service = MockHomeService();
  locator.registerSingleton<HomeService>(service as HomeService);
  return service;
}

class MockHomeService {}

MockHomerepositortImplementationService
    getAndRegisterHomerepositortImplementationService() {
  _removeRegistrationIfExists<HomerepositortImplementationService>();
  final service = MockHomerepositortImplementationService();
  locator.registerSingleton<HomerepositortImplementationService>(
      service as HomerepositortImplementationService);
  return service;
}

class MockHomerepositortImplementationService {}

MockBookdetailrepositoryImplementationService
    getAndRegisterBookdetailrepositoryImplementationService() {
  _removeRegistrationIfExists<BookdetailrepositoryImplementationService>();
  final service = MockBookdetailrepositoryImplementationService();
  locator.registerSingleton<BookdetailrepositoryImplementationService>(
      service as BookdetailrepositoryImplementationService);
  return service;
}

class MockBookdetailrepositoryImplementationService {}

MockCartrepositoryimplementationService
    getAndRegisterCartrepositoryimplementationService() {
  _removeRegistrationIfExists<CartrepositoryimplementationService>();
  final service = MockCartrepositoryimplementationService();
  locator.registerSingleton<CartrepositoryimplementationService>(
      service as CartrepositoryimplementationService);
  return service;
}

class MockCartrepositoryimplementationService {}

MockSignupRepositoryImplementationService
    getAndRegisterSignupRepositoryImplementationService() {
  _removeRegistrationIfExists<SignupRepositoryImplementationService>();
  final service = MockSignupRepositoryImplementationService();
  locator.registerSingleton<SignupRepositoryImplementationService>(
      service as SignupRepositoryImplementationService);
  return service;
}

class MockSignupRepositoryImplementationService {}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
