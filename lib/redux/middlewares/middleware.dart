import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:estiam_doctor_doctors/redux/middlewares/auth_middleware.dart';
import 'package:estiam_doctor_doctors/redux/middlewares/schedule_middleware.dart';
import 'package:estiam_doctor_doctors/redux/models/app_state.dart';

final persistor = new Persistor<AppState>(
    storage: new FlutterStorage('redux-app'),
    decoder: AppState.rehydrationJSON);

/// Create and return middlewares
List<Middleware<AppState>> createMiddleware() => <Middleware<AppState>>[
  thunkMiddleware,
  persistor.createMiddleware(),
  new LoggingMiddleware.printer(),
]..addAll(createAuthMiddleware())..addAll(createScheduleMiddleware());