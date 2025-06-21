import 'package:mindshaper/src/core/config/build_config.dart';
import 'package:mindshaper/src/core/utils/exceptions/exceptions.dart';

Exception handleError(String error) {
  final logger = BuildConfig.instance.envConfig.logger;
  logger.e("Generic exception: $error");

  return ApplicationException(message: error);
}
