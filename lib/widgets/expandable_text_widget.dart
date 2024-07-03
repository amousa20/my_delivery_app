import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String expandText;
   const ExpandableTextWidget({super.key,required this.expandText});
  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          ExpandableText(
            widget.expandText,
            expandText: 'show more',
            collapseText: 'show less',
            maxLines: 5,
            style: TextStyle(color: AppColors.paraColor,fontSize: Dimensions.font16,height: 1.6),
            linkColor: AppColors.mainColor,

          ),
        ],
      ),
    );
  }
}