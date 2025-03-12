class AppRoute {
  static String splash = "/splash";
  static String onboarding = "/onboarding";
  static String landing = "/landing";

  // Auth
  static String login = "/login";

  // Auth - Register
  static String registerTipe = "/register/tipe-usaha";
  static String registerRekening = "/register/rekening"; // 1
  static String registerPhone = "/register/phone"; // 2
  static String registerPhonePin = "/register/phone/pin"; // 2
  static String registerEmail = "/register/email"; // 2
  static String registerPassword = "/register/password"; // 3
  static String registerProfile = "/register/profile"; // 3
  static String registerFace = "/register/face"; // 4
  static String registerUsaha = "/register/usaha"; // 4
  static String registerUsahaTerkini = "/register/usaha/terkini"; // 4
  static String registerUsahaKonfirmasi = "/register/usaha/konfirmasi"; // 4

  static String registerSuccess = "/register/success";

  static String home = "/home";

  // Talangan
  static String loanOnboard = "/onboard-loan";
  static String loanSk = "/onboard-loan/sk";
  static String loanDoccument = "/onboard-loan/doccument";
  static String loanFinish = "/onboard-loan/finish";

  static String talangan = "/talangan";
  static String loan = "/talangan/loan";
  static String loanInstallment = "/talangan/loan/installment";
  static String loanSummary = "/talangan/loan/summary";
  static String loanApproved = "/talangan/loan/approved";

  static String creditScore = "/talangan/credit-score";
  static String financialTips = "/talangan/financial-tips";

  //  Cashflow
  static String cashflow = "/cashflow";

  // Outlet
  static String setting = "/setting";
  static String outlet = "/outlet";
  static String createOutlet = "/outlet/new";
  static String outletDetail(String id) => "/outlet/$id";
  static String editOutlet(String id) => "/outlet/$id/edit";
  static String outletCreated = "/outlet/creted";
  static String outletDeleted = "/outlet/deleted";
}
