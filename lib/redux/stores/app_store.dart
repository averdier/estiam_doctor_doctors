import 'package:redux/redux.dart';
import 'package:estiam_doctor_doctors/redux/models/app_state.dart';
import 'package:estiam_doctor_doctors/redux/reducers/app_reducer.dart';
import 'package:estiam_doctor_doctors/redux/middlewares/middleware.dart';


/// Create and return app store
Store<AppState> createStore() {
  Store<AppState> store = new Store(
    appReducer,
    initialState: new AppState(),
    middleware: createMiddleware(),
  );
  persistor.start(store);

  return store;
}