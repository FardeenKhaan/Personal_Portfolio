import 'package:fk_protfolio/for_mobileScreen/about_page_mob.dart';
import 'package:fk_protfolio/for_mobileScreen/contact_page_mob.dart';
import 'package:fk_protfolio/for_mobileScreen/landing_PageMobile.dart';
import 'package:fk_protfolio/for_mobileScreen/works_page_mob.dart';
import 'package:fk_protfolio/for_webScreen/about_page_web.dart';
import 'package:fk_protfolio/for_webScreen/contact_page_web.dart';
import 'package:fk_protfolio/for_webScreen/landing_PageWeb.dart';
import 'package:fk_protfolio/for_webScreen/works_page_web.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
          settings: settings,
        );

      case '/About':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return AboutPageWeb();
              } else {
                return AboutPageMob();
              }
            },
          ),
          settings: settings,
        );

      case '/Works':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return WorksPageWeb();
              } else {
                return WorksPageMob();
              }
            },
          ),
          settings: settings,
        );

      case '/Contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return ContactPageWeb();
              } else {
                return ContactPageMob();
              }
            },
          ),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
          settings: settings,
        );
    }
  }
}
