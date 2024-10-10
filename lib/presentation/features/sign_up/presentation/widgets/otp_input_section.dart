import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_form_field.dart';


class OtpInputSection extends StatefulWidget {
  const OtpInputSection({super.key});

  @override
  State<OtpInputSection> createState() => _OtpInputSectionState();
}

class _OtpInputSectionState extends State<OtpInputSection> {
  final int fieldCount = 6; // Total number of SwbFormfields
  List<FocusNode> _focusNodes = [];

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(fieldCount, (index) => FocusNode());
  }

  @override
  void dispose() {
    _focusNodes.forEach((node) => node.dispose());
    super.dispose();
  }

  // Move focus to the next SwbFormfield when input is detected
  void _nextField(String value, int index) {
    if (value.length == 1) {
      if (index < fieldCount - 1) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        _focusNodes[index].unfocus(); // Unfocus the last field
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(3, (index) {
          return SizedBox(
            height: 112,
            width: 45,
            child: SwbFormfield(
              focusNode: _focusNodes[index],
              onChanged: (value) => _nextField(value, index),
            ),
          );
        }),
        const Text(
          '-',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFFBFBFBF), // Adjusted color to match AppColors.primaryBFBFBF
          ),
        ),
        ...List.generate(3, (index) {
          return SizedBox(
            height: 112,
            width: 45,
            child: SwbFormfield(
              focusNode: _focusNodes[index + 3], // Use remaining FocusNodes
              onChanged: (value) => _nextField(value, index + 3),
            ),
          );
        }),
      ],
    ),
      
      // Row(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     SizedBox(
      //       height: 112.h,
      //       width: 45.w,
      //       child: const SwbFormfield(),
      //     ),
      //     SizedBox(
      //       height: 112.h,
      //       width: 45.w,
      //       child: const SwbFormfield(),
      //     ),
      //     SizedBox(
      //       height: 112.h,
      //       width: 45.w,
      //       child: const SwbFormfield(),
      //     ),
      //     const Text(
      //       '-',
      //       style: TextStyle(
      //         fontSize: 30,
      //         color: AppColors.primaryBFBFBF,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 112.h,
      //       width: 45.w,
      //       child: const SwbFormfield(),
      //     ),
      //     SizedBox(
      //       height: 112.h,
      //       width: 45.w,
      //       child: const SwbFormfield(),
      //     ),
      //     SizedBox(
      //       height: 112.h,
      //       width: 45.w,
      //       child: const SwbFormfield(),
      //     ),
      //   ],
      // ),
    
    
    );

    // SwbOtpField(
    //   obscureText: false,
    // );
  }
}
