import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/main/supervisor_home/domain/entities/view_messages_entity.dart';
import 'package:marhom/features/main/supervisor_home/domain/use_cases/view_messages_use_case.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/models/location_model.dart';
import '../../data/models/view_message_model.dart';

part 'view_messages_states.dart';

part 'view_messages_cubit.freezed.dart';

class ViewMessagesCubit extends Cubit<ViewMessagesStates> {
  ViewMessagesCubit({required this.viewMessagesUseCase})
      : super(const ViewMessagesStates.initial());

  static ViewMessagesCubit get(context) => BlocProvider.of(context);

  final ViewMessagesUseCase viewMessagesUseCase;

  getMessages(ViewMessagesModel viewMessagesModel) async {
    emit(const ViewMessagesStates.loading());

    final response = await viewMessagesUseCase(viewMessagesModel);
    response.fold(
      (l) => emit(ViewMessagesStates.error(l)),
      (r) => emit(ViewMessagesStates.success(r)),
    );
  }

  LocationModel parseLocation(String jsonString) {
    Map<String, dynamic> jsonData = json.decode(jsonString);
    String latitude = jsonData['latitude'];
    String longitude = jsonData['longitude'];
    return LocationModel(
        lat: double.parse(latitude), lng: double.parse(longitude));
  }

  launchMaps(double latitude, double longitude) async {
    final String googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await urlLauncher.canLaunchUrl(Uri.parse(googleMapsUrl))) {
      await urlLauncher.launchUrl(Uri.parse(googleMapsUrl));
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }

  void makePhoneCall(String phoneNumber) async {
    urlLauncher.launchUrl(
      Uri.parse("tel://$phoneNumber"),
    );
  }
}
