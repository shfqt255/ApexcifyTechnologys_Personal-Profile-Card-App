import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioLogic {
  //Keys
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();
  final expKey = GlobalKey();
  final contactsKey = GlobalKey();
  final ScrollController scrollController = ScrollController();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  // show ScaffolodMessanger
  void showMessage(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  //Scroll Function
  void ScrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

//  Email Url
  void EmailLaunch(String email) async {
    final Uri EmailUri = Uri(scheme: 'mailto', path: email);
    if (await launchUrl(EmailUri)) {
      showMessage('You are leading to Gmail');
    } else
      showMessage('Could not load URL');
  }

  // Call URL
  void makeCall(String phone) async {
    final Uri callUri = Uri(scheme: 'tel', path: phone);
    if (!await launchUrl(callUri))
      showMessage('You are leaing Gitbub');
    else
      showMessage('Could not load URL');
  }

  // Github LaunchUrl
  void Url(String Url) async {
    final Uri URI = Uri.parse(Url);
    if (!await launchUrl(URI))
      showMessage('You are leading to anothe app');
    else
      showMessage('Could not load URL');
  }
}
