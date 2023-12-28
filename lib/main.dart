import 'package:bookly/core/utils/helper/app_router.dart';
import 'package:bookly/core/utils/helper/colors_helper.dart';
import 'package:bookly/core/utils/helper/service_locator.dart';
import 'package:bookly/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/Home/presentation/controller/bestseller_cubit/best_seller_cubit.dart';
import 'package:bookly/features/Home/presentation/controller/featured_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(
    const BooklyApp(),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(gitItServiceLocator.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              BestSellerCubit(gitItServiceLocator.get<HomeRepoImpl>()),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: BooklyColors.kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
