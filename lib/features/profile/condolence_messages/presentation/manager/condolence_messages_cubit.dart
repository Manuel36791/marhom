import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/condolence_messages/domain/entities/condelence_messages_entity.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/use_cases/condolence_messages_use_case.dart';

part 'condolence_messages_states.dart';

part 'condolence_messages_cubit.freezed.dart';

class CondolenceMessagesCubit extends Cubit<CondolenceMessagesStates> {
  CondolenceMessagesCubit({required this.messagesUseCase})
      : super(const CondolenceMessagesStates.initial());

  static CondolenceMessagesCubit get(context) => BlocProvider.of(context);

  final CondolenceMessagesUseCase messagesUseCase;

  getCondolenceMessages() async {
    emit(const CondolenceMessagesStates.loading());

    final response = await messagesUseCase();

    response.fold(
      (l) => emit(CondolenceMessagesStates.error(l)),
      (r) => emit(CondolenceMessagesStates.success(r)),
    );
  }
}
