import 'package:estiam_doctor_doctors/redux/actions/schedule_actions.dart';
import 'package:estiam_doctor_doctors/redux/models/schedule_state.dart';
import 'package:redux/redux.dart';


Reducer<ScheduleState> scheduleReducer = combineReducers([
  new TypedReducer<ScheduleState, ScheduleListRequestSuccess>(getScheduleListSuccessReducer)
]);


ScheduleState getScheduleListSuccessReducer(ScheduleState state, ScheduleListRequestSuccess action) {
  return state.copyWith(
    schedules: action.schedules
  );
}