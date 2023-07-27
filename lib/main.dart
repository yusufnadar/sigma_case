import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'common/viewModels/people_view_model.dart';
import 'core/constants/app/app_constants.dart';
import 'core/constants/colors/colors.dart';
import 'core/constants/navigation/navigation_constants.dart';
import 'core/service/navigation/navigation_route.dart';
import 'core/service/navigation/navigation_service.dart';
import 'pages/searchPeople/viewModel/search_people_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SearchPeopleViewModel>(
          create: (context) => SearchPeopleViewModel(),
        ),
        ChangeNotifierProvider<PeopleViewModel>(
          create: (context) => PeopleViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
            title: 'Sigma Case',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              scaffoldBackgroundColor: ColorConstants.white,
              fontFamily: ApplicationConstants.fontFamily,
              appBarTheme: const AppBarTheme(
                backgroundColor: ColorConstants.white,
              ),
              useMaterial3: true,
            ),
            initialRoute: NavigationConstants.bottomBar,
            navigatorKey: NavigationService.instance.navigatorKey,
            onGenerateRoute: NavigationRoute.instance.generateRoute,
          ),
        );
      },
    );
  }
}
