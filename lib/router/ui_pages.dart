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

import '../app_state.dart';

const String kSplashPath = '/splash';
const String kLoginPath = '/login';
const String kCreateAccountPath = '/createAccount';
const String kListItemsPath = '/listItems';
const String kDetailsPath = '/details';
const String kCartPath = '/cart';
const String kCheckoutPath = '/checkout';
const String kSettingsPath = '/settings';

enum Pages {
  splash,
  login,
  createAccount,
  list,
  details,
  cart,
  checkout,
  settings
}

class PageConfiguration {
  PageConfiguration(
      {required this.key, required this.path, required this.uiPage, this.currentPageAction});
  
  final String key;
  final String path;
  final Pages uiPage;
  PageAction? currentPageAction;

}

PageConfiguration splashPageConfig =
    PageConfiguration(key: 'Splash', path: kSplashPath, uiPage: Pages.splash);

PageConfiguration loginPageConfig =
    PageConfiguration(key: 'Login', path: kLoginPath, uiPage: Pages.login);

PageConfiguration createAccountPageConfig = PageConfiguration(
    key: 'CreateAccount', path: kCreateAccountPath, uiPage: Pages.createAccount);

PageConfiguration listItemsPageConfig = PageConfiguration(
    key: 'ListItems', path: kListItemsPath, uiPage: Pages.list);

PageConfiguration detailsPageConfig =
    PageConfiguration(key: 'Details', path: kDetailsPath, uiPage: Pages.details);

PageConfiguration cartPageConfig =
    PageConfiguration(key: 'Cart', path: kCartPath, uiPage: Pages.cart);

PageConfiguration checkoutPageConfig = PageConfiguration(
    key: 'Checkout', path: kCheckoutPath, uiPage: Pages.checkout);

PageConfiguration settingsPageConfig = PageConfiguration(
    key: 'Settings', path: kSettingsPath, uiPage: Pages.settings);
