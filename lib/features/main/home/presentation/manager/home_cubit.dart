import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/main/home/domain/entities/slider_entity.dart';
import 'package:prayers_times/prayers_times.dart';
import 'package:location/location.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/use_cases/sliders_use_case.dart';

part 'home_states.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit({required this.slidersUseCase}) : super(const HomeStates.initial());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  final SlidersUseCase slidersUseCase;

  getSliders() async {
    emit(const HomeStates.loading());

    final response = await slidersUseCase();
    response.fold(
      (l) => emit(HomeStates.slidersError(l)),
      (r) => emit(HomeStates.slidersSuccess(r)),
    );
  }

  Location location = Location();
  late LocationData locationData;

  Future getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();

    // emit(HomeStates.userLocation(locationData!));
  }

  PrayerTimes? prayerTimes;

  getPrayerTimes() async {
    emit(const HomeStates.loading());
    await getCurrentLocation();
    // Define the geographical coordinates for the location
    Coordinates coordinates = Coordinates(
      locationData.latitude!,
      locationData.longitude!,
    );

    // Specify the calculation parameters for prayer times
    PrayerCalculationParameters params = PrayerCalculationMethod.karachi();
    params.madhab = PrayerMadhab.hanafi;

    // Create a PrayerTimes instance for the specified location
    prayerTimes = PrayerTimes(
      coordinates: coordinates,
      calculationParameters: params,
      precision: true,
      locationName: 'Asia/Kolkata',
    );

    emit(HomeStates.prayerSuccess(prayerTimes!));
  }
}
