import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/profile/send_message/data/models/send_message_model.dart';
import 'package:marhom/features/profile/send_message/domain/use_cases/send_message_use_case.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/logger.dart';
import '../../domain/entities/send_message_entity.dart';

part 'send_message_states.dart';

part 'send_message_cubit.freezed.dart';

enum Gender {
  male(
    title: "Male",
  ),
  female(
    title: "Female",
  );

  final String title;

  const Gender({required this.title});
}

enum WeekDays {
  saturday(
    title: "Saturday",
    day: 0,
  ),
  sunday(
    title: "Sunday",
    day: 1,
  ),
  monday(
    title: "Monday",
    day: 2,
  ),
  tuesday(
    title: "Tuesday",
    day: 3,
  ),
  wednesday(
    title: "Wednesday",
    day: 4,
  ),
  thursday(
    title: "Thursday",
    day: 5,
  ),
  friday(
    title: "Friday",
    day: 6,
  );

  final String title;
  final num day;

  const WeekDays({required this.title, required this.day});
}

enum Prayers {
  fajr(
    title: "Fajr",
  ),
  sunrise(
    title: "Sunrise",
  ),
  dhuhr(
    title: "Dhuhr",
  ),
  asr(
    title: "Asr",
  ),
  maghrib(
    title: "Maghrib",
  ),
  isha(
    title: "Isha",
  ),
  tahajjud(
    title: "Tahajjud",
  ),
  sehri(
    title: "Sehri",
  );

  final String title;

  const Prayers({required this.title});
}

class SendMessageCubit extends Cubit<SendMessageStates> {
  SendMessageCubit({required this.sendMessageUseCase})
      : super(const SendMessageStates.initial());

  static SendMessageCubit get(context) => BlocProvider.of(context);

  final SendMessageUseCase sendMessageUseCase;

  userSendMessage(SendMessageModel sendMessageModel) async {
    emit(const SendMessageStates.loading());

    final response = await sendMessageUseCase(sendMessageModel);

    response.fold(
      (l) => emit(SendMessageStates.error(l)),
      (r) => emit(SendMessageStates.success(r)),
    );
  }

  Gender gender = Gender.male;
  WeekDays weekDay = WeekDays.saturday;
  DateTime now = DateTime.now();
  String date = "";
  String time = "";
  Prayers prayer = Prayers.isha;

  chooseDate(WeekDays day) {
    DateTime adjustedDate = now.add(Duration(days: day.day.toInt()));
    date = "${adjustedDate.year}-${adjustedDate.month}-${adjustedDate.day}";
    logger.i(date);
  }

  chooseTime(Prayers prayer) {
    switch (prayer) {
      case Prayers.fajr:
        time = AppConstants.prayerTimes!.fajrEndTime!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.sunrise:
        time = AppConstants.prayerTimes!.sunrise!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.dhuhr:
        time = AppConstants.prayerTimes!.dhuhrEndTime!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.asr:
        time = AppConstants.prayerTimes!.asrEndTime!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.maghrib:
        time = AppConstants.prayerTimes!.maghribEndTime!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.isha:
        time = AppConstants.prayerTimes!.ishaEndTime!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.tahajjud:
        time = AppConstants.prayerTimes!.tahajjudEndTime!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
      case Prayers.sehri:
        time = AppConstants.prayerTimes!.sehri!.format(DateFormatType.timeOnly, showSeconds: true, use24HoursFormat: true);
    }
    logger.i(date);
  }

  int funeralIndex = 1;
  List<BehaviorSubject<String>> funeralControllers = [];
  List<BehaviorSubject<String>> funeralLocationControllers = [];

  increaseFuneralCtrl() {
    if (funeralIndex >= funeralControllers.length) {
      funeralControllers.add(BehaviorSubject<String>());
      funeralLocationControllers.add(BehaviorSubject<String>());
    }
  }

  increaseFuneralIndex() {
    if (funeralIndex <= 4) {
      funeralIndex++;
      emit(SendMessageStates.indexIncreased(funeralIndex));
    } else {
      funeralIndex;
      emit(SendMessageStates.indexMaintained(funeralIndex));
    }
  }

  int familyIndex = 1;
  List<BehaviorSubject<String>> nameControllers = [];
  List<BehaviorSubject<String>> phoneControllers = [];

  increaseFamilyCtrl() {
    if (familyIndex >= nameControllers.length) {
      nameControllers.add(BehaviorSubject<String>());
      phoneControllers.add(BehaviorSubject<String>());
    }
  }

  increaseFamilyIndex() {
    if (familyIndex <= 4) {
      familyIndex++;
      emit(SendMessageStates.indexIncreased(familyIndex));
    } else {
      familyIndex;
      emit(SendMessageStates.indexMaintained(familyIndex));
    }
  }

  disposeCtrl() {
    for (var subject in nameControllers) {
      subject.close();
    }
    for (var subject in phoneControllers) {
      subject.close();
    }
    for (var subject in funeralControllers) {
      subject.close();
    }

    for (var subject in funeralLocationControllers) {
      subject.close();
    }
  }

  final deceasedNameCtrl = BehaviorSubject<String>();

  Stream<String> get deceasedNameStream => deceasedNameCtrl.stream;

  deceasedName(String name) {
    if (name.isEmpty) {
      deceasedNameCtrl.sink.addError("Deceased name is required");
    } else if (name.length < 3) {
      deceasedNameCtrl.sink
          .addError("Deceased name must be at least 3 characters long");
    } else {
      deceasedNameCtrl.sink.add(name);
    }
  }
}
