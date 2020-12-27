// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/adoption/adoption.home.view.dart';
import '../ui/adoption/adoption.item.dart';
import '../ui/adoption/adoptionlist.view.dart';
import '../ui/app.view.dart';
import '../ui/auth/auth.view.dart';
import '../ui/forum/forum.dart';
import '../ui/lost/lost.view.dart';
import '../ui/lost/scanner.dart';
import '../ui/mate/matelist.dart';
import '../ui/messaging/message.detail.view.dart';
import '../ui/store/store.view.dart';
import '../ui/vet/doctor.dart';

class Routes {
  static const String appView = '/';
  static const String signUpView = '/sign-up-view';
  static const String adoptionItem = '/adoption-item';
  static const String adoptionList = '/adoption-list';
  static const String messageDetailView = '/message-detail-view';
  static const String lostView = '/lost-view';
  static const String store = '/Store';
  static const String doctorView = '/doctor-view';
  static const String adoptionHome = '/adoption-home';
  static const String mateview = '/Mateview';
  static const String forumPage = '/forum-page';
  static const String lost = '/Lost';
  static const all = <String>{
    appView,
    signUpView,
    adoptionItem,
    adoptionList,
    messageDetailView,
    lostView,
    store,
    doctorView,
    adoptionHome,
    mateview,
    forumPage,
    lost,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.appView, page: AppView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.adoptionItem, page: AdoptionItem),
    RouteDef(Routes.adoptionList, page: AdoptionList),
    RouteDef(Routes.messageDetailView, page: MessageDetailView),
    RouteDef(Routes.lostView, page: LostView),
    RouteDef(Routes.store, page: Store),
    RouteDef(Routes.doctorView, page: DoctorView),
    RouteDef(Routes.adoptionHome, page: AdoptionHome),
    RouteDef(Routes.mateview, page: Mateview),
    RouteDef(Routes.forumPage, page: ForumPage),
    RouteDef(Routes.lost, page: Lost),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AppView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AppView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    AdoptionItem: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AdoptionItem(),
        settings: data,
      );
    },
    AdoptionList: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AdoptionList(),
        settings: data,
      );
    },
    MessageDetailView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MessageDetailView(),
        settings: data,
      );
    },
    LostView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LostView(),
        settings: data,
      );
    },
    Store: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Store(),
        settings: data,
      );
    },
    DoctorView: (data) {
      final args = data.getArgs<DoctorViewArguments>(
        orElse: () => DoctorViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DoctorView(key: args.key),
        settings: data,
      );
    },
    AdoptionHome: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AdoptionHome(),
        settings: data,
      );
    },
    Mateview: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Mateview(),
        settings: data,
      );
    },
    ForumPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ForumPage(),
        settings: data,
      );
    },
    Lost: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Lost(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushAppView() => push<dynamic>(Routes.appView);

  Future<dynamic> pushSignUpView() => push<dynamic>(Routes.signUpView);

  Future<dynamic> pushAdoptionItem() => push<dynamic>(Routes.adoptionItem);

  Future<dynamic> pushAdoptionList() => push<dynamic>(Routes.adoptionList);

  Future<dynamic> pushMessageDetailView() =>
      push<dynamic>(Routes.messageDetailView);

  Future<dynamic> pushLostView() => push<dynamic>(Routes.lostView);

  Future<dynamic> pushStore() => push<dynamic>(Routes.store);

  Future<dynamic> pushDoctorView({
    Key key,
  }) =>
      push<dynamic>(
        Routes.doctorView,
        arguments: DoctorViewArguments(key: key),
      );

  Future<dynamic> pushAdoptionHome() => push<dynamic>(Routes.adoptionHome);

  Future<dynamic> pushMateview() => push<dynamic>(Routes.mateview);

  Future<dynamic> pushForumPage() => push<dynamic>(Routes.forumPage);

  Future<dynamic> pushLost() => push<dynamic>(Routes.lost);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DoctorView arguments holder class
class DoctorViewArguments {
  final Key key;
  DoctorViewArguments({this.key});
}
