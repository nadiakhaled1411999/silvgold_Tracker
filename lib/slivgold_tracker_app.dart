import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/routing/app_router.dart';
import 'package:slivgold_tracker/core/routing/route_export.dart';

class SilvgoldTrackerApp extends StatelessWidget {
  const SilvgoldTrackerApp({super.key});
  @override
  Widget build(BuildContext context) {
    final  SilvGoldTrackerAppRouter router =  SilvGoldTrackerAppRouter();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
         // builder: EasyLoading.init(),
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          initialRoute:Routes.homeScreen,
          onGenerateRoute: router.generateRoute,
        );
      },
    );
  }
}
