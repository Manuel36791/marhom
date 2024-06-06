import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/send_message/data/models/send_message_model.dart';
import 'package:marhom/features/profile/send_message/domain/use_cases/send_message_use_case.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
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
  ),
  sunday(
    title: "Sunday",
  ),
  monday(
    title: "Monday",
  ),
  tuesday(
    title: "Tuesday",
  ),
  wednesday(
    title: "Wednesday",
  ),
  thursday(
    title: "Thursday",
  ),
  friday(
    title: "Friday",
  );

  final String title;

  const WeekDays({required this.title});
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
  SendMessageCubit({required this.sendMessageUseCase}) : super(const SendMessageStates.initial());

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
  Prayers prayer = Prayers.isha;

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
