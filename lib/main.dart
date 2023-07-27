import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'core/consts/app/app_constants.dart';
import 'core/consts/colors/colors.dart';
import 'pages/bottomNavBar/view/bottom_nav_bar_view.dart';
import 'pages/searchPeople/viewModel/search_people_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SearchPeopleViewModel>(
          create: (context) => SearchPeopleViewModel(),
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
              appBarTheme:
                  const AppBarTheme(backgroundColor: ColorConstants.white),
              useMaterial3: true,
            ),
            home: const BottomNavBarView(),
          ),
        );
      },
    );
  }
}
