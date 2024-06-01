import 'package:injectable/injectable.dart';
import '../../../mediaplusbackend.dart';
import 'init_di.config.dart';

/// ### Init Dependency Injection
@InjectableInit(
  asExtension: true,
  initializerName: "init",
  preferRelativeImports: true,
)
void configureDi() => serviceLocator.init();
