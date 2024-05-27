import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../generated/l10n.dart';

part 'user_register_states.dart';

part 'user_register_cubit.freezed.dart';

class UserRegisterCubit extends Cubit<UserRegisterStates> {
  UserRegisterCubit() : super(const UserRegisterStates.initial());

  static UserRegisterCubit get(context) => BlocProvider.of(context);

  final firstNameCtrl = BehaviorSubject<String>();
  final lastNameCtrl = BehaviorSubject<String>();
  final whatsappCtrl = BehaviorSubject<String>();
  final snapChatCtrl = BehaviorSubject<String>();

  Stream<String> get firstNameStream => firstNameCtrl.stream;

  Stream<String> get lastNameStream => lastNameCtrl.stream;

  Stream<String> get whatsappStream => whatsappCtrl.stream;

  Stream<String> get snapChatStream => snapChatCtrl.stream;

  validateFirstName(String firstName) async {
    if (firstName.isEmpty) {
      firstNameCtrl.sink.addError(S.current.pleaseEnterYourFirstName);
    } else {
      firstNameCtrl.sink.add(firstName);
    }
  }

  validateLastName(String lastName) async {
    if (lastName.isEmpty) {
      lastNameCtrl.sink.addError(S.current.pleaseEnterYourLastName);
    } else {
      lastNameCtrl.sink.add(lastName);
    }
  }

  validateWaNumber(String phone) async {
    if (phone.isEmpty) {
      whatsappCtrl.sink.addError(S.current.pleaseEnterYourPhoneNumber);
    } else if (!phone.isPhone()) {
      whatsappCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else {
      whatsappCtrl.sink.add(phone);
    }
  }

  validateSnapChatId(String snapChatId) async {
    final RegExp regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,14}$');

    if (snapChatId.isEmpty) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterYourSnapchatId);
    } else if (!regex.hasMatch(snapChatId)) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterAValidSnapchatId);
    } else {
      snapChatCtrl.sink.add(snapChatId);
    }
  }

  Stream<bool> get registerBtnStream => Rx.combineLatest4(
        firstNameStream,
        lastNameStream,
        whatsappStream,
        snapChatStream,
        (a, b, c, d) => true,
      );
}
