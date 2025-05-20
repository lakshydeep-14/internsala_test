import 'package:internsala_test/core/extenstions.dart';
import 'package:internsala_test/features/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            // statusBarBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light, // for ios
            statusBarIconBrightness: Brightness.dark, // for android
          ),
        );
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: AppTextStyle.lightTextTheme),
          home: Dashboard(),
        );
      },
    );
  }
}
