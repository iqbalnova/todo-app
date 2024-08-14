import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist/features/core/router/app_router.dart';

import 'core/theme/styles.dart';
import 'injector.dart' as di;

final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(MyApp(
    navigatorKey: globalKey,
  ));
}

class MyApp extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const MyApp({super.key, required this.navigatorKey});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: !kDebugMode,
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: whiteColor,
          ),
          navigatorKey: widget.navigatorKey,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
