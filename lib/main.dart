import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/features/categories/widgets/categories.dart';
import 'package:loco/features/favorites/favorites.dart';
import 'package:loco/features/home/home.dart';
import 'package:loco/features/payment/payment_method.dart';
import 'package:loco/features/profile/profile.dart';
import 'package:loco/features/home/widgets/woman_products_page.dart';
import 'package:loco/provider/app_config_provider.dart';
import 'package:loco/provider/auth_provider.dart';
import 'package:loco/provider/fav_provider.dart';
import 'package:provider/provider.dart';
import 'core/utils/constants.dart';
import 'core/utils/themes.dart';
import 'features/cart/add_to_cart.dart';
import 'features/color_picker/color_picker.dart';
import 'features/home/widgets/accessories_page.dart';
import 'features/home/widgets/kids_products_page.dart';
import 'features/home/widgets/men_product_page.dart';
import 'features/loco_assistant/loco_assistant.dart';
import 'features/log_in/log_in.dart';
import 'features/navigation/navigation.dart';
import 'features/on_boarding/on_boarding.dart';
import 'features/on_boarding/on_boarding1.dart';
import 'features/on_boarding/on_boarding2.dart';
import 'features/product_details/product_details.dart';
import 'features/profile/profiles/settings.dart';
import 'features/register/register.dart';

void main() async {
  Gemini.init(apiKey: geminiApiKey);
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ?
  await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyDq3vnxzDBMxLwplsqHQB904sTRlZduOa0",
              appId: "1:528924836776:android:a52865019acbde2913d39d",
              messagingSenderId: "528924836776",
              projectId: "loco-238a7"),
        ) : await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AppConfigProvider()),
      ChangeNotifierProvider(create: (context) => AuthProviders()),
      ChangeNotifierProvider(create: (context) => FavListProvider()),
    ],
    child: const Loco(),
  ));
}

class Loco extends StatelessWidget {
  const Loco({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'onBoarding',
      routes: {
        OnBoarding.routeName: (context) => const OnBoarding(),
        OnBoarding1.routeName: (context) => const OnBoarding1(),
        OnBoarding2.routeName: (context) => const OnBoarding2(),
        LogIn.routeName: (context) => const LogIn(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        ProductDetails.routename: (context) => ProductDetails(),
        AddToCart.routename: (context) => AddToCart(),
        Settings.routeName: (context) => const Settings(),
        PaymentMethod.routeName: (context) => const PaymentMethod(),
        Profile.routename: (context) => const Profile(),
        HomePage.routename: (context) => const HomePage(),
        Favorites.routename: (context) => Favorites(),
        NavigationPage.routeName: (context) => const NavigationPage(),
        LocoAssistant.routeName: (context) => const LocoAssistant(),
        ColorPickerScreen.routeName: (context) => const ColorPickerScreen(),
        Categories.routeName: (context) => Categories(),
        MenProductsPage.routename: (context) => MenProductsPage(),
        WomanProductsPage.routename: (context) => WomanProductsPage(),
        KidsProductsPage.routename: (context) => KidsProductsPage(),
        AccessoriesPage.routename: (context) => AccessoriesPage(),
      },
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
      theme: lightMode,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
