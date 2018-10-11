import 'package:estiam_doctor_doctors/models/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:estiam_doctor_doctors/redux/actions/auth_actions.dart';
import 'package:estiam_doctor_doctors/redux/models/app_state.dart';
import 'package:estiam_doctor_doctors/redux/models/auth_state.dart';
import 'package:redux/redux.dart';

class WeekTab extends StatelessWidget {
  WeekTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
        converter: (Store<AppState> store) {
      _ViewModel vm = _ViewModel.fromStore(store);
      return vm;
    }, builder: (BuildContext context, vm) {
      return new Center(
        child: new Column(
          children: <Widget>[
            new Text('isAuthenticated: ' + vm.auth.user.token),
            new RaisedButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(new GetProductsRequest());
                },
                child: Text('Dispatch action'),
            )
          ]
        )

      );
    });
    return new Text('week tab');
  }
}

class _ViewModel {
  final List<Schedule> schedules;

  _ViewModel({
    @required this.schedules,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(schedules: store.state.schedule.schedules);
  }
}
