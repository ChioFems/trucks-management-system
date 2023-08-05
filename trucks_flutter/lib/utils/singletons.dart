import 'package:get_it/get_it.dart';
import '/utils/api_client.dart';

GetIt singleton = GetIt.instance;

Future<void> initSingletons() async {
  singleton.registerSingleton<ApiClient>(ApiClientImplementation());

  await singleton<ApiClient>().init(); //use this anywhere in the code
}
