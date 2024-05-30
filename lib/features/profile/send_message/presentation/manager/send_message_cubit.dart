import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'send_message_states.dart';

part 'send_message_cubit.freezed.dart';

enum Gender {
  male(title: "Male"),
  female(title: "Female");

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

class SendMessageCubit extends Cubit<SendMessageStates> {
  SendMessageCubit() : super(const SendMessageStates.initial());

  static SendMessageCubit get(context) => BlocProvider.of(context);

  Gender gender = Gender.male;
  WeekDays weekDay = WeekDays.saturday;

  int index = 1;
  List<BehaviorSubject<String>> nameControllers = [];
  List<BehaviorSubject<String>> phoneControllers = [];

  disposeCtrl() {
    for (var subject in nameControllers) {
      subject.close();
    }
    for (var subject in phoneControllers) {
      subject.close();
    }
  }

  increaseCtrl() {
    if (index >= nameControllers.length) {
      nameControllers.add(BehaviorSubject<String>());
      phoneControllers.add(BehaviorSubject<String>());
    }
  }

  increaseIndex() {
    if (index <= 4) {
      index++;
      emit(SendMessageStates.indexIncreased(index));
    } else {
      index;
      emit(SendMessageStates.indexMaintained(index));
    }
  }
  final deceasedNameCtrl = BehaviorSubject<String>();
  Stream<String> get deceasedNameStream => deceasedNameCtrl.stream;
  deceasedName(String name) {
    if (name.isEmpty) {
      deceasedNameCtrl.sink.addError("Deceased name is required");
    } else if (name.length < 3) {
      deceasedNameCtrl.sink.addError("Deceased name must be at least 3 characters long");
    } else {
      deceasedNameCtrl.sink.add(name);
    }
  }
}
