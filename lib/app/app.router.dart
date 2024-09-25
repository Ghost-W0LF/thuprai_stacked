// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i9;
import 'package:thuprai_stacked/ui/views/bookdetail/bookdetail_view.dart'
    as _i6;
import 'package:thuprai_stacked/ui/views/home/home_view.dart' as _i5;
import 'package:thuprai_stacked/ui/views/home/home_viewmodel.dart' as _i8;
import 'package:thuprai_stacked/ui/views/login/login_view.dart' as _i4;
import 'package:thuprai_stacked/ui/views/startup/startup_view.dart' as _i2;
import 'package:thuprai_stacked/ui/views/uikit/uikit_view.dart' as _i3;

class Routes {
  static const startupView = '/startup-view';

  static const uikitView = '/uikit-view';

  static const loginView = '/login-view';

  static const homeView = '/home-view';

  static const bookdetailView = '/bookdetail-view';

  static const all = <String>{
    startupView,
    uikitView,
    loginView,
    homeView,
    bookdetailView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.uikitView,
      page: _i3.UikitView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i5.HomeView,
    ),
    _i1.RouteDef(
      Routes.bookdetailView,
      page: _i6.BookdetailView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.UikitView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.UikitView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      final args = data.getArgs<LoginViewArguments>(
        orElse: () => const LoginViewArguments(),
      );
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.LoginView(key: args.key),
        settings: data,
      );
    },
    _i5.HomeView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.HomeView(),
        settings: data,
      );
    },
    _i6.BookdetailView: (data) {
      final args = data.getArgs<BookdetailViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.BookdetailView(
            key: args.key,
            bookTitle: args.bookTitle,
            index: args.index,
            slugs: args.slugs,
            homeViewModel: args.homeViewModel),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class LoginViewArguments {
  const LoginViewArguments({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant LoginViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class BookdetailViewArguments {
  const BookdetailViewArguments({
    this.key,
    required this.bookTitle,
    required this.index,
    this.slugs,
    this.homeViewModel,
  });

  final _i7.Key? key;

  final String bookTitle;

  final int index;

  final String? slugs;

  final _i8.HomeViewModel? homeViewModel;

  @override
  String toString() {
    return '{"key": "$key", "bookTitle": "$bookTitle", "index": "$index", "slugs": "$slugs", "homeViewModel": "$homeViewModel"}';
  }

  @override
  bool operator ==(covariant BookdetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.bookTitle == bookTitle &&
        other.index == index &&
        other.slugs == slugs &&
        other.homeViewModel == homeViewModel;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        bookTitle.hashCode ^
        index.hashCode ^
        slugs.hashCode ^
        homeViewModel.hashCode;
  }
}

extension NavigatorStateExtension on _i9.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUikitView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.uikitView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView({
    _i7.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loginView,
        arguments: LoginViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBookdetailView({
    _i7.Key? key,
    required String bookTitle,
    required int index,
    String? slugs,
    _i8.HomeViewModel? homeViewModel,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.bookdetailView,
        arguments: BookdetailViewArguments(
            key: key,
            bookTitle: bookTitle,
            index: index,
            slugs: slugs,
            homeViewModel: homeViewModel),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUikitView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.uikitView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView({
    _i7.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loginView,
        arguments: LoginViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBookdetailView({
    _i7.Key? key,
    required String bookTitle,
    required int index,
    String? slugs,
    _i8.HomeViewModel? homeViewModel,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.bookdetailView,
        arguments: BookdetailViewArguments(
            key: key,
            bookTitle: bookTitle,
            index: index,
            slugs: slugs,
            homeViewModel: homeViewModel),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
