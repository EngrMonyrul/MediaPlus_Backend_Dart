part of '../../../mediaplusbackend.dart';

/// ### Init Providers
/// *** init providers of the project ***
List<dynamic> get initProviders => [
      /*-------------------> trending media provider <-------------------*/
      ChangeNotifierProvider<TrendingMediaProvider>(
        create: (context) => _TrendingMediaProviderImpl(),
      ),
    ];
