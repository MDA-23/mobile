import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/app/presentation/widgets/card_loan.dart';
import 'package:mobile/styles/text_styles.dart';

class AllLoan extends StatelessWidget {
  const AllLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "All Loans",
          style: body4BTextStyle(),
        ),
        SizedBox(height: 12.h),
        CardLoan(),
      ],
    );
  }
}
