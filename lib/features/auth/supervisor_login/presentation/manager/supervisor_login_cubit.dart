import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/supervisor_login_model.dart';
import '../../domain/entities/supervisor_login_entity.dart';
import '../../domain/use_cases/supervisor_login_use_case.dart';

part 'supervisor_login_states.dart';

part 'supervisor_login_cubit.freezed.dart';

class SupervisorLoginCubit extends Cubit<SupervisorLoginStates> {
  SupervisorLoginCubit({required this.supervisorLoginUseCase})
      : super(const SupervisorLoginStates.initial());

  static SupervisorLoginCubit get(context) => BlocProvider.of(context);

  final SupervisorLoginUseCase supervisorLoginUseCase;

  supervisorLogin(SupervisorLoginModel supervisorLoginModel) async {
    emit(const SupervisorLoginStates.loading());
    final result = await supervisorLoginUseCase(supervisorLoginModel);
    result.fold(
      (l) => emit(
        SupervisorLoginStates.error(l),
      ),
      (r) => emit(
        SupervisorLoginStates.success(r),
      ),
    );
  }

  final userNameCtrl = BehaviorSubject<String>();
  final passCtrl = BehaviorSubject<String>();

  Stream<String> get userNameStream => userNameCtrl.stream;

  Stream<String> get passStream => passCtrl.stream;

  validateUserName(String userName) async {
    final RegExp regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,14}$');

    if (userName.isEmpty) {
      userNameCtrl.sink.addError(S.current.pleaseChooseAUniqueUsername);
    } else if (!regex.hasMatch(userName)) {
      userNameCtrl.sink.addError(S.current.pleaseEnterAValidUserName);
    } else {
      userNameCtrl.sink.add(userName);
    }
  }

  validatePass(String pass) async {
    if (pass.isEmpty) {
      passCtrl.sink.addError(S.current.pleaseEnterYourPassword);
    } else if (pass.length < 8) {
      passCtrl.sink.addError(S.current.passwordIsTooShort);
    } else {
      passCtrl.sink.add(pass);
    }
  }

  Stream<bool> get loginBtnStream => Rx.combineLatest(
        [
          userNameCtrl,
          passStream,
        ],
        (value) => true,
      );
}
