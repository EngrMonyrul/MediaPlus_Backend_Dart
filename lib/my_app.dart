//-------------------------------------->
//---- Author: Monirul Islam
//---- Created On: 5/30/2024 at 1:37PM
//---- Note: This is the root widget of the app
//--------------------------------------->

part of 'mediaplusbackend.dart';

/// get global instance of get it
final serviceLocator = GetIt.instance;

/// ### Main Class
/// Main root class of widgets hierarchy
///
/// __Request Parameters__
/// * [provider]
/// * [title]
/// * [lightTheme]
/// * [darkTheme]
/// * [themeMode]
/// * [initialRoute]
/// * [onGenerateRoute]
///
/// __Response__
/// * Root [Widget]
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.provider,
    this.title,
    this.lightTheme,
    this.darkTheme,
    this.themeMode,
    this.initialRoute,
    this.onGenerateRoute,
    this.home,
  });

  final List<dynamic>? provider;
  final String? title;
  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final ThemeMode? themeMode;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final Widget? home;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // using this shorthand function we are inserting all provider of provider into multi provider one by one
        // not whole list
        ...provider ?? [],
        ...initProviders
        // if we try this then the multi provider list will look like this '[[]]'
        // ...provider ?? [],
      ], //setting all the providers
      child: MaterialApp(
        title: title ?? "",
        debugShowCheckedModeBanner: false,
        theme: lightTheme ?? ThemeData.light(),
        darkTheme: darkTheme ?? ThemeData.dark(),
        themeMode: themeMode ?? ThemeMode.system,
        // initialRoute: initialRoute,
        onGenerateRoute: onGenerateRoute,
        home: home ?? const SizedBox(),
      ),
    );
  }
}
