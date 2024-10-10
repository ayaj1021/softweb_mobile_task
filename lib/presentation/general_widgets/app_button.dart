import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';

class SwbSendButton extends StatefulWidget {
  const SwbSendButton({
    required this.onTap,
    required this.title,
    super.key,
    this.isEnabled = true,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.hasBorder = false,
    this.isLoading = false,
    this.width = double.infinity,

  });

  final bool isEnabled;
  final Color backgroundColor;
  final Color textColor;

  final bool hasBorder;
  final String title;
  final void Function() onTap;
  final bool isLoading;
  final double width;

  @override
  State<SwbSendButton> createState() => _SwbSendButtonState();
}

class _SwbSendButtonState extends State<SwbSendButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: InkWell(
        onTap: widget.isEnabled ? widget.onTap : null,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  AppColors.primaryEF5858,
                  AppColors.primaryEFA058,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
              ),
              //color:

              // widget.isEnabled
              //     ? widget.backgroundColor
              //     : AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(8),
             ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                // widget.isLoading
                //     ? const Center(child: AppLoader())
                //     :
                Text(
              widget.title,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
