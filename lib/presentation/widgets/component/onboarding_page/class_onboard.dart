import 'package:flutter/material.dart';

class Onboarding {
  final pageController = PageController();
  int currentPage = 0;

  changePage(int page) {
    currentPage = page;
  }

  proximoCard() {
    pageController.nextPage(
      duration: Duration(milliseconds: 600),
      curve: Curves.easeIn,
    );
  }

  
}
