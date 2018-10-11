import 'package:meta/meta.dart';
import 'package:estiam_doctor_doctors/models/schedule.dart';
import 'package:estiam_doctor_doctors/redux/models/auth_state.dart';
import 'package:estiam_doctor_doctors/redux/models/schedule_state.dart';

@immutable
class AppState {
  final AuthState auth;
  final ScheduleState schedule;

  /// Constructor
  AppState({AuthState auth, ScheduleState schedule}):
        auth = auth ?? new AuthState(),
        schedule = schedule ?? new ScheduleState(schedules: new List<Schedule>());

  static AppState rehydrationJSON(dynamic json) => new AppState(
      auth: new AuthState.fromJSON(json['auth']),
      schedule: new ScheduleState.fromJSOM(json['schedule'])
  );

  /// Return current state in JSON
  Map<String, dynamic> toJson() => {
    'auth': auth.toJSON(),
    'schedule': schedule.toJSON()
  };

  /// Return copy of state
  AppState copyWith({
    bool rehydrated,
    AuthState auth,
    ScheduleState schedule,
  }) {
    return new AppState(
        auth: auth ?? this.auth,
        schedule: schedule ?? this.schedule
    );
  }

  @override
  String toString() {
    return '''AppState{
            auth: $auth,
            schedule: $schedule
        }''';
  }
}