import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:estiam_doctor_doctors/views/command_list_screen.dart';
import 'package:estiam_doctor_doctors/views/home_screen.dart';
import 'package:estiam_doctor_doctors/views/kebab_details_screen.dart';
import 'package:estiam_doctor_doctors/views/kebab_list_screen.dart';
import 'package:estiam_doctor_doctors/views/login_screen.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'package:estiam_doctor_doctors/redux/middlewares/middleware.dart';
import 'package:estiam_doctor_doctors/redux/models/app_state.dart';
import 'package:estiam_doctor_doctors/redux/stores/app_store.dart';
import 'package:estiam_doctor_doctors/views/loading_screen.dart';

void main() => runApp(new DoctorApp());

class DoctorApp extends StatelessWidget {
  final store = createStore();

  /// Constructor
  DoctorApp();

  @override
  Widget build(BuildContext context) {
    return new PersistorGate(
      persistor: persistor,
      loading: new LoadingScreen(),
      builder: (context) => new StoreProvider<AppState>(
        store: store,
        child: new MaterialApp(
          title: 'KebabApp',
          routes: <String, WidgetBuilder>{
            '/': (BuildContext context) => new StoreConnector<AppState, dynamic>(
                converter: (store) => store.state.auth.isAuthenticated,
                builder: (BuildContext context, isAuthenticated) => isAuthenticated ? new MainScreen() : new LoginScreen()
            ),
            '/login': (BuildContext context) => new LoginScreen(),
            '/main': (BuildContext context) => new MainScreen(),
            '/kebabs': (BuildContext context) => new KebabListScreen(),
            '/kebabs/details': (BuildContext context) => new KebabDetailsScreen(),
            '/commands': (BuildContext context) => new CommandListScreen()
          }
        )
      )
    );
  }
}