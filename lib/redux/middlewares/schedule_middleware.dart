

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiam_doctor_doctors/models/schedule.dart';
import 'package:estiam_doctor_doctors/redux/actions/schedule_actions.dart';
import 'package:estiam_doctor_doctors/redux/models/app_state.dart';
import 'package:redux/redux.dart';


List<Middleware<AppState>> createScheduleMiddleware() => <Middleware<AppState>> [
  new TypedMiddleware<AppState, ScheduleListRequest>(getSchedules)
];


final getSchedules = _getSchedules();

Middleware<AppState> _getSchedules() {
  return (Store store, action, NextDispatcher next) async {
    if (action is ScheduleListRequest) {
      QuerySnapshot querySnapshot = await Firestore.instance.collection("reservations").where('doctorId', isEqualTo: action.doctorId).getDocuments();
      var list = querySnapshot.documents;
      store.dispatch(ScheduleListRequestSuccess(list.map((i) => new Schedule.fromSnapshot(i)).toList()));
    }
  };
}