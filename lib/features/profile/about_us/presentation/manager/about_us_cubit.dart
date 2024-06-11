import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/about_us/domain/use_cases/about_us_use_case.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/about_us_entity.dart';

part 'about_us_states.dart';

part 'about_us_cubit.freezed.dart';

class AboutUsCubit extends Cubit<AboutUsStates> {
  AboutUsCubit({required this.aboutUsUseCase}) : super(const AboutUsStates.initial());

  static AboutUsCubit get(context) => BlocProvider.of(context);

  final AboutUsUseCase aboutUsUseCase;

  getAboutUs() async {
    emit(const AboutUsStates.loading());

    final result = await aboutUsUseCase.call();

    result.fold(
      (l) => emit(AboutUsStates.error(l)),
      (r) => emit(AboutUsStates.success(r)),
    );
  }
}
