import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/contact_us/domain/use_cases/contact_us_use_case.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/contact_us_entity.dart';

part 'contact_us_states.dart';

part 'contact_us_cubit.freezed.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit({required this.contactUsUseCase}) : super(const ContactUsState.initial());

  static ContactUsCubit get(context) => BlocProvider.of(context);

  final ContactUsUseCase contactUsUseCase;

  getContact() async {
    emit(const ContactUsState.loading());
    final result = await contactUsUseCase();
    result.fold(
      (l) => emit(
        ContactUsState.error(l),
      ),
      (r) => emit(
        ContactUsState.success(r),
      ),
    );
  }
}
