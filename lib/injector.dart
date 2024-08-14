// import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //HTTP Client
  // locator.registerSingleton<Dio>(DioConfig().client);

  //BLOC
  // locator.registerFactory(
  //   () => LoginBloc(
  //     login: locator(),
  //   ),
  // );

  //Usecases
  // locator.registerLazySingleton(
  //   () => Login(
  //     locator(),
  //   ),
  // );

  //Repositories`
  // locator.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(
  //     authRemoteDatasource: locator(),
  //   ),
  // );

  //Data Sources
  // locator.registerLazySingleton<AuthRemoteDatasource>(
  //   () => AuthRemoteDatasourceImpl(
  //     client: locator(),
  //     storage: locator(),
  //     firebaseAuth: locator(),
  //     googleSignIn: locator(),
  //   ),
  // );

  //MISC
  // locator.registerLazySingleton<FlutterSecureStorage>(
  //     () => const FlutterSecureStorage());
}
