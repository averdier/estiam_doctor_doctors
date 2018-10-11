
import 'package:estiam_doctor_doctors/models/schedule.dart';
import 'package:estiam_doctor_doctors/models/user.dart';

/// On schedule list request
class ScheduleListRequest {
  final String doctorId;

  ScheduleListRequest(this.doctorId);
}

/// On schedule list request success
class ScheduleListRequestSuccess {
  final List<Schedule> schedules;

  ScheduleListRequestSuccess(this.schedules);
}

/// On schedule list request failure
class ScheduleListRequestFailure {
  final String error;

  ScheduleListRequestFailure(this.error);
}
