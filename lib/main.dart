import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/networking/dio_helper.dart';
import 'package:slivgold_tracker/slivgold_tracker_app.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp( const SilvgoldTrackerApp());


  DioHelper.init();
}
