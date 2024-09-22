// Mocks generated by Mockito 5.4.4 from annotations
// in thuprai_stacked/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i9;

import 'package:dio/dio.dart' as _i2;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:stacked_services/stacked_services.dart' as _i6;
import 'package:thuprai_stacked/services/dio_instance_service.dart' as _i11;
import 'package:thuprai_stacked/services/securestorage_service.dart' as _i13;
import 'package:thuprai_stacked/ui/views/login/model/login_request_model.dart'
    as _i10;
import 'package:thuprai_stacked/ui/views/login/repository/loginrepository_implementation_service.dart'
    as _i12;
import 'package:thuprai_stacked/ui/views/login/service/login_service.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_1<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLoginService_2 extends _i1.SmartFake implements _i3.LoginService {
  _FakeLoginService_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFlutterSecureStorage_3 extends _i1.SmartFake
    implements _i4.FlutterSecureStorage {
  _FakeFlutterSecureStorage_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_4<T1> extends _i1.SmartFake implements _i5.Future<T1> {
  _FakeFuture_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i6.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
      ) as String);

  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
      ) as String);

  @override
  _i8.GlobalKey<_i8.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i8.GlobalKey<_i8.NavigatorState>?);

  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i6.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<T?>? navigateWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? replaceWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void popUntil(
    _i8.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? navigateToView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i8.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i6.Transition? transition,
    _i6.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? clearStackAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? clearTillFirstAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);

  @override
  _i5.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i8.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i6.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i6.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i6.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
    double? elevation = 1.0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
            #elevation: elevation,
          },
        ),
        returnValue: _i5.Future<_i6.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i6.SheetResponse<dynamic>?>.value(),
      ) as _i5.Future<_i6.SheetResponse<dynamic>?>);

  @override
  _i5.Future<_i6.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i9.Color? barrierColor = const _i9.Color(2315255808),
    double? elevation = 1.0,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #elevation: elevation,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i5.Future<_i6.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i5.Future<_i6.SheetResponse<T>?>.value(),
      ) as _i5.Future<_i6.SheetResponse<T>?>);

  @override
  void completeSheet(_i6.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i6.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i6.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i8.Widget Function(
      _i8.BuildContext,
      _i6.DialogRequest<dynamic>,
      dynamic Function(_i6.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i6.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i9.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i9.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i5.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i5.Future<_i6.DialogResponse<dynamic>?>);

  @override
  _i5.Future<_i6.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i9.Color? barrierColor = const _i9.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i5.Future<_i6.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i5.Future<_i6.DialogResponse<T>?>.value(),
      ) as _i5.Future<_i6.DialogResponse<T>?>);

  @override
  _i5.Future<_i6.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i9.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i9.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i5.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i5.Future<_i6.DialogResponse<dynamic>?>);

  @override
  void completeDialog(_i6.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [LoginService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginService extends _i1.Mock implements _i3.LoginService {
  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
        returnValueForMissingStub: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);

  @override
  _i5.Future<_i2.Response<dynamic>> loginService(
          _i10.LoginRequestModel? loginModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #loginService,
          [loginModel],
        ),
        returnValue:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #loginService,
            [loginModel],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Response<dynamic>>.value(_FakeResponse_1<dynamic>(
          this,
          Invocation.method(
            #loginService,
            [loginModel],
          ),
        )),
      ) as _i5.Future<_i2.Response<dynamic>>);
}

/// A class which mocks [DioInstanceService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioInstanceService extends _i1.Mock
    implements _i11.DioInstanceService {
  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
        returnValueForMissingStub: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);
}

/// A class which mocks [LoginrepositoryImplementationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginrepositoryImplementationService extends _i1.Mock
    implements _i12.LoginrepositoryImplementationService {
  @override
  _i3.LoginService get loginService => (super.noSuchMethod(
        Invocation.getter(#loginService),
        returnValue: _FakeLoginService_2(
          this,
          Invocation.getter(#loginService),
        ),
        returnValueForMissingStub: _FakeLoginService_2(
          this,
          Invocation.getter(#loginService),
        ),
      ) as _i3.LoginService);

  @override
  _i5.Future<String?> loginRepository(_i10.LoginRequestModel? loginModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #loginRepository,
          [loginModel],
        ),
        returnValue: _i5.Future<String?>.value(),
        returnValueForMissingStub: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);
}

/// A class which mocks [SecurestorageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecurestorageService extends _i1.Mock
    implements _i13.SecurestorageService {
  @override
  _i4.FlutterSecureStorage get storage => (super.noSuchMethod(
        Invocation.getter(#storage),
        returnValue: _FakeFlutterSecureStorage_3(
          this,
          Invocation.getter(#storage),
        ),
        returnValueForMissingStub: _FakeFlutterSecureStorage_3(
          this,
          Invocation.getter(#storage),
        ),
      ) as _i4.FlutterSecureStorage);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get disposed => (super.noSuchMethod(
        Invocation.getter(#disposed),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set disposed(bool? _disposed) => super.noSuchMethod(
        Invocation.setter(
          #disposed,
          _disposed,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get initialised => (super.noSuchMethod(
        Invocation.getter(#initialised),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get onModelReadyCalled => (super.noSuchMethod(
        Invocation.getter(#onModelReadyCalled),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get isBusy => (super.noSuchMethod(
        Invocation.getter(#isBusy),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get anyObjectsBusy => (super.noSuchMethod(
        Invocation.getter(#anyObjectsBusy),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get hasError => (super.noSuchMethod(
        Invocation.getter(#hasError),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i5.Future<void> writeToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #writeToken,
          [token],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<String?> readToken() => (super.noSuchMethod(
        Invocation.method(
          #readToken,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
        returnValueForMissingStub: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<void> deleteTojen() => (super.noSuchMethod(
        Invocation.method(
          #deleteTojen,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void rebuildUi() => super.noSuchMethod(
        Invocation.method(
          #rebuildUi,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i9.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i9.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setInitialised(bool? value) => super.noSuchMethod(
        Invocation.method(
          #setInitialised,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setOnModelReadyCalled(bool? value) => super.noSuchMethod(
        Invocation.method(
          #setOnModelReadyCalled,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool busy(Object? object) => (super.noSuchMethod(
        Invocation.method(
          #busy,
          [object],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void setBusyForObject(
    Object? object,
    bool? value,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #setBusyForObject,
          [
            object,
            value,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setBusy(bool? value) => super.noSuchMethod(
        Invocation.method(
          #setBusy,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  T skeletonData<T>({
    required T? realData,
    required T? busyData,
    Object? busyKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #skeletonData,
          [],
          {
            #realData: realData,
            #busyData: busyData,
            #busyKey: busyKey,
          },
        ),
        returnValue: _i7.dummyValue<T>(
          this,
          Invocation.method(
            #skeletonData,
            [],
            {
              #realData: realData,
              #busyData: busyData,
              #busyKey: busyKey,
            },
          ),
        ),
        returnValueForMissingStub: _i7.dummyValue<T>(
          this,
          Invocation.method(
            #skeletonData,
            [],
            {
              #realData: realData,
              #busyData: busyData,
              #busyKey: busyKey,
            },
          ),
        ),
      ) as T);

  @override
  _i5.Future<T> runBusyFuture<T>(
    _i5.Future<T>? busyFuture, {
    Object? busyObject,
    bool? throwException = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #runBusyFuture,
          [busyFuture],
          {
            #busyObject: busyObject,
            #throwException: throwException,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #runBusyFuture,
                  [busyFuture],
                  {
                    #busyObject: busyObject,
                    #throwException: throwException,
                  },
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_4<T>(
              this,
              Invocation.method(
                #runBusyFuture,
                [busyFuture],
                {
                  #busyObject: busyObject,
                  #throwException: throwException,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #runBusyFuture,
                  [busyFuture],
                  {
                    #busyObject: busyObject,
                    #throwException: throwException,
                  },
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_4<T>(
              this,
              Invocation.method(
                #runBusyFuture,
                [busyFuture],
                {
                  #busyObject: busyObject,
                  #throwException: throwException,
                },
              ),
            ),
      ) as _i5.Future<T>);

  @override
  dynamic error(Object? object) => super.noSuchMethod(
        Invocation.method(
          #error,
          [object],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clearErrors() => super.noSuchMethod(
        Invocation.method(
          #clearErrors,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool hasErrorForKey(Object? key) => (super.noSuchMethod(
        Invocation.method(
          #hasErrorForKey,
          [key],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void setError(dynamic error) => super.noSuchMethod(
        Invocation.method(
          #setError,
          [error],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setErrorForModelOrObject(
    dynamic value, {
    Object? key,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #setErrorForModelOrObject,
          [value],
          {#key: key},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setErrorForObject(
    Object? object,
    dynamic value,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #setErrorForObject,
          [
            object,
            value,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<T> runErrorFuture<T>(
    _i5.Future<T>? future, {
    Object? key,
    bool? throwException = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #runErrorFuture,
          [future],
          {
            #key: key,
            #throwException: throwException,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #runErrorFuture,
                  [future],
                  {
                    #key: key,
                    #throwException: throwException,
                  },
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_4<T>(
              this,
              Invocation.method(
                #runErrorFuture,
                [future],
                {
                  #key: key,
                  #throwException: throwException,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #runErrorFuture,
                  [future],
                  {
                    #key: key,
                    #throwException: throwException,
                  },
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_4<T>(
              this,
              Invocation.method(
                #runErrorFuture,
                [future],
                {
                  #key: key,
                  #throwException: throwException,
                },
              ),
            ),
      ) as _i5.Future<T>);

  @override
  void onFutureError(
    dynamic error,
    Object? key,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onFutureError,
          [
            error,
            key,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
