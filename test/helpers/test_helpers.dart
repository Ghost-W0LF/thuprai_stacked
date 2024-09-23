import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:thuprai_stacked/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked/ui/views/login/service/login_service.dart';
import 'package:thuprai_stacked/services/dio_instance_service.dart';
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart';
import 'package:thuprai_stacked/services/securestorage_service.dart';
import 'package:thuprai_stacked/ui/views/home/service/home_service.dart';
import 'package:thuprai_stacked/ui/views/home/repository/homerepositort_implementation_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

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
// @stacked-mock-register
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockLoginService getAndRegisterLoginService() {
  _removeRegistrationIfExists<LoginService>();
  final service = MockLoginService();
  locator.registerSingleton<LoginService>(service);
  return service;
}

MockDioInstanceService getAndRegisterDioInstanceService() {
  _removeRegistrationIfExists<DioInstanceService>();
  final service = MockDioInstanceService();
  locator.registerSingleton<DioInstanceService>(service);
  return service;
}

MockLoginrepositoryImplementationService
    getAndRegisterLoginrepositoryImplementationService() {
  _removeRegistrationIfExists<LoginrepositoryImplementationService>();
  final service = MockLoginrepositoryImplementationService();
  locator.registerSingleton<LoginrepositoryImplementationService>(service);
  return service;
}

MockSecurestorageService getAndRegisterSecurestorageService() {
  _removeRegistrationIfExists<SecurestorageService>();
  final service = MockSecurestorageService();
  locator.registerSingleton<SecurestorageService>(service);
  return service;
}

MockHomeService getAndRegisterHomeService() {
  _removeRegistrationIfExists<HomeService>();
  final service = MockHomeService();
  locator.registerSingleton<HomeService>(service);
  return service;
}

MockHomerepositortImplementationService
    getAndRegisterHomerepositortImplementationService() {
  _removeRegistrationIfExists<HomerepositortImplementationService>();
  final service = MockHomerepositortImplementationService();
  locator.registerSingleton<HomerepositortImplementationService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
