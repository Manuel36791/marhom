import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/resend_code_model.dart';
import '../../data/models/verify_account_model.dart';
import '../../domain/entities/resend_code_entity.dart';
import '../../domain/entities/verify_account_entity.dart';
import '../../domain/use_cases/resend_code_usecase.dart';
import '../../domain/use_cases/verify_account_usecase.dart';

part 'verify_account_states.dart';

part 'verify_account_cubit.freezed.dart';

class VerifyAccountCubit extends Cubit<VerifyAccountStates> {
  VerifyAccountCubit({
    required this.verifyAccountUseCase,
    required this.resendCodeUseCase,
  }) : super(const VerifyAccountStates.initial());

  static VerifyAccountCubit get(BuildContext context) =>
      BlocProvider.of(context);

  final pinCtrl = BehaviorSubject<String>();

  Stream<String> get pinStream => pinCtrl.stream;

  validateCode(String code) {
    if (code.isEmpty) {
      pinCtrl.sink.addError(
          "Please enter the verification code sent to you on whatsapp");
    } else if (code.length != 4) {
      pinCtrl.sink.addError("Please enter a valid verification code");
    } else {
      pinCtrl.sink.add(code);
    }
  }

  Stream<bool> get verifyBtnStream => Rx.combineLatest(
        [pinStream],
        (values) => true,
      );

  Stream<bool> get resendCodeStream => Rx.combineLatest(
        [pinStream],
        (values) => true,
      );

  final VerifyAccountUseCase verifyAccountUseCase;

  verifyUserAccount(VerifyAccountModel verifyAccountModel) async {
    emit(const VerifyAccountStates.loading());
    final verify = await verifyAccountUseCase(verifyAccountModel);

    verify.fold((l) {
      emit(
        VerifyAccountStates.error(l),
      );
    }, (r) {
      emit(
        VerifyAccountStates.success(r),
      );
    });
  }

  final VerifyResendCodeUseCase resendCodeUseCase;

  var model = const ResendCodeEntity();

  resendCode(ResendCodeModel resendCodeModel) async {
    emit(const VerifyAccountStates.loading());
    final resentOtp = await resendCodeUseCase(resendCodeModel);

    resentOtp.fold(
      (l) => {
        emit(
          VerifyAccountStates.error(l),
        ),
      },
      (r) => {
        emit(
          VerifyAccountStates.resendCode(r),
        ),
      },
    );
  }
}
