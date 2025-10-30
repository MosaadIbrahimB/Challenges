import 'package:challenge/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class InputDateDayWidget extends StatefulWidget {
  const InputDateDayWidget({super.key, required this.data, this.fillColor});

  final String data;
  final Color? fillColor;

  @override
  State<InputDateDayWidget> createState() => _InputDateDayWidgetState();
}

class _InputDateDayWidgetState extends State<InputDateDayWidget> {
  DateTime selectedDate = DateTime(2024, 3, 22);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.data, style: AppTextStyle.inter12w500Gray),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: _pickDate,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12).r,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xffEDF1F3) ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(" ${selectedDate.toString().substring(0,10)}", style: AppTextStyle.inter14w600),
                Spacer(),
                Icon(Icons.calendar_today_outlined, size: 20.r,color: AppColor.gray6c,),

              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

}
