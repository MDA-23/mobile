import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/loan_onboard_controller.dart';

class LoanFinishPage extends GetView<LoanOnboardController> {
  const LoanFinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('LoanFinishPage')),
        body: SafeArea(child: Text('LoanFinishPageController')));
  }
}
