import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

abstract class AppConstants{
  static  double expandedAppBarHeight(BuildContext context)=>context.height*.6 ;
  static  double collapsedAppBarHeight(BuildContext context)=>context.height*.25 ;
}