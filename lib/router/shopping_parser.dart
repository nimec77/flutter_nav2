/*
 * Copyright (c) 2021 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
import 'package:flutter/material.dart';
import 'ui_pages.dart';

class ShoppingParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location);
    if (uri.pathSegments.isEmpty) {
      return splashPageConfig;
    }

    final path = '/${uri.pathSegments[0]}';
    switch (path) {
      case kSplashPath:
        return splashPageConfig;
      case kLoginPath:
        return loginPageConfig;
      case kCreateAccountPath:
        return createAccountPageConfig;
      case kListItemsPath:
        return listItemsPageConfig;
      case kDetailsPath:
        return detailsPageConfig;
      case kCartPath:
        return cartPageConfig;
      case kCheckoutPath:
        return checkoutPageConfig;
      case kSettingsPath:
        return settingsPageConfig;
      default:
        return splashPageConfig;
    }
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPage) {
      case Pages.splash:
        return const RouteInformation(location: kSplashPath);
      case Pages.login:
        return const RouteInformation(location: kLoginPath);
      case Pages.createAccount:
        return const RouteInformation(location: kCreateAccountPath);
      case Pages.list:
        return const RouteInformation(location: kListItemsPath);
      case Pages.details:
        return const RouteInformation(location: kDetailsPath);
      case Pages.cart:
        return const RouteInformation(location: kCartPath);
      case Pages.checkout:
        return const RouteInformation(location: kCheckoutPath);
      case Pages.settings:
        return const RouteInformation(location: kSettingsPath);
      default: return const RouteInformation(location: kSplashPath);

    }
  }
}