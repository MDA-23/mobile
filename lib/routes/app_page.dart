import 'package:get/get.dart';
import 'package:mobile/app/bindings/auth_bindings.dart';
import 'package:mobile/app/bindings/cashflow_bindings.dart';
import 'package:mobile/app/bindings/home_bindings.dart';
import 'package:mobile/app/bindings/loan_bindings.dart';
import 'package:mobile/app/bindings/loan_onboard_binding.dart';
import 'package:mobile/app/bindings/outlet_bindings.dart';
import 'package:mobile/app/bindings/talangan_bindings.dart';
import 'package:mobile/app/presentation/view/cashflow_page.dart';
import 'package:mobile/app/presentation/view/create_outlet_page.dart';
import 'package:mobile/app/presentation/view/credit_score_page.dart';
import 'package:mobile/app/presentation/view/detail_outlet_page.dart';
import 'package:mobile/app/presentation/view/financial_tips_page.dart';
import 'package:mobile/app/presentation/view/home_page.dart';
import 'package:mobile/app/presentation/view/landing_page.dart';
import 'package:mobile/app/presentation/view/loan_approved_page.dart';
import 'package:mobile/app/presentation/view/loan_document_page.dart';
import 'package:mobile/app/presentation/view/loan_finish_page.dart';
import 'package:mobile/app/presentation/view/loan_installment_page.dart';
import 'package:mobile/app/presentation/view/loan_onboard_page.dart';
import 'package:mobile/app/presentation/view/loan_page.dart';
import 'package:mobile/app/presentation/view/loan_sk_page.dart';
import 'package:mobile/app/presentation/view/loan_summary_page.dart';
import 'package:mobile/app/presentation/view/login_page.dart';
import 'package:mobile/app/presentation/view/outlet_page.dart';
import 'package:mobile/app/presentation/view/register_email_page.dart';
import 'package:mobile/app/presentation/view/register_password_page.dart';
import 'package:mobile/app/presentation/view/register_phone_page.dart';
import 'package:mobile/app/presentation/view/register_phone_pin_page.dart';
import 'package:mobile/app/presentation/view/register_profile_page.dart';
import 'package:mobile/app/presentation/view/register_rekening_page.dart';
import 'package:mobile/app/presentation/view/register_success_page.dart';
import 'package:mobile/app/presentation/view/register_tipe_page.dart';
import 'package:mobile/app/presentation/view/setting_page.dart';
import 'package:mobile/app/presentation/view/splash_page.dart';
import 'package:mobile/app/presentation/view/talangan_page.dart';
import 'package:mobile/routes/app_route.dart';

List<GetPage<dynamic>> appPage() {
  return <GetPage<dynamic>>[
    GetPage(
      name: AppRoute.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoute.landing,
      page: () => LandingPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoute.registerTipe,
      page: () => RegisterTipePage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoute.registerRekening,
      page: () => RegisterRekeningPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoute.registerPhone,
      page: () => RegisterPhonePage(),
      binding: AuthBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.registerPhonePin,
      page: () => RegisterPhonePinPage(),
      binding: AuthBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.registerPassword,
      page: () => RegisterPasswordPage(),
      binding: AuthBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.registerProfile,
      page: () => RegisterProfilePage(),
      binding: AuthBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.talangan,
      page: () => TalanganPage(),
      binding: TalanganBindings(),
    ),
    GetPage(
      name: AppRoute.loan,
      page: () => LoanPage(),
      binding: LoanBindings(),
    ),
    GetPage(
      name: AppRoute.loanInstallment,
      page: () => LoanInstallmentPage(),
      binding: LoanBindings(),
    ),
    GetPage(
      name: AppRoute.loanSummary,
      page: () => LoanSummaryPage(),
      binding: LoanBindings(),
    ),
    GetPage(
      name: AppRoute.loanApproved,
      page: () => LoanApprovedPage(),
      binding: LoanBindings(),
    ),
    GetPage(
      name: AppRoute.creditScore,
      page: () => CreditScorePage(),
      binding: LoanBindings(),
    ),
    GetPage(
      name: AppRoute.financialTips,
      page: () => FinancialTipsPage(),
      binding: LoanBindings(),
    ),
    GetPage(
      name: AppRoute.registerEmail,
      page: () => RegisterEmailPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoute.registerSuccess,
      page: () => RegisterSuccessPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoute.login,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoute.cashflow,
      page: () => CashflowPage(),
      binding: CashflowBindings(),
    ),
    GetPage(
      name: AppRoute.loanOnboard,
      page: () => LoanOnboardPage(),
      binding: LoanOnboardBinding(),
    ),
    GetPage(
      name: AppRoute.loanSk,
      page: () => LoanSkPage(),
      binding: LoanOnboardBinding(),
    ),
    GetPage(
      name: AppRoute.loanDoccument,
      page: () => LoanDocumentPage(),
      binding: LoanOnboardBinding(),
    ),
    GetPage(
      name: AppRoute.loanFinish,
      page: () => LoanFinishPage(),
      binding: LoanOnboardBinding(),
    ),
    GetPage(
      name: AppRoute.setting,
      page: () => SettingPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoute.outlet,
      page: () => OutletPage(),
      binding: OutletBindings(),
    ),
    GetPage(
      name: AppRoute.createOutlet,
      page: () => CreateOutletPage(edit: false),
      binding: OutletBindings(),
    ),
    GetPage(
      name: AppRoute.outletDetail(":id"),
      page: () => DetailOutletPage(),
      binding: OutletBindings(),
    ),
    GetPage(
      name: AppRoute.editOutlet(":id"),
      page: () => CreateOutletPage(edit: true),
      binding: OutletBindings(),
    ),
  ];
}
