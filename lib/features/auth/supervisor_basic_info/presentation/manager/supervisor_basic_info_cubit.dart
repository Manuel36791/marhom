import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/auth/supervisor_basic_info/domain/use_cases/helpers_use_case.dart';
import 'package:marhom/features/auth/supervisor_basic_info/domain/use_cases/supervisor_basic_info_use_class.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/debouncer.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/models/user_data_model.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../data/models/helpers_model.dart';
import '../../data/models/supervisor_basic_info_model.dart';
import '../../domain/entities/supervisor_basic_info_entity.dart';

part 'supervisor_basic_info_state.dart';
part 'supervisor_basic_info_cubit.freezed.dart';

class SupervisorBasicInfoCubit extends Cubit<SupervisorBasicInfoState> {
  SupervisorBasicInfoCubit({required this.helpersUseCase, required this.basicInfoUseCase}) : super(const SupervisorBasicInfoState.initial());

  static SupervisorBasicInfoCubit get(context) => BlocProvider.of(context);


  final HelpersUseCase helpersUseCase;

  getHelpersInfo(HelpersModel helpersModel) async {
    emit(const SupervisorBasicInfoState.loading());
    final result = await helpersUseCase(helpersModel);
    result.fold((failure) {
      emit(SupervisorBasicInfoState.helpersError(failure));
    }, (helpersEntity) {
      emit(SupervisorBasicInfoState.helpersSuccess(helpersEntity));
    });
  }

  var debouncer = Debouncer(
    const Duration(milliseconds: 1000),
  );

  debouncerCall(HelpersModel helpersModel) async {
    debouncer.call(() async {
      await getHelpersInfo(helpersModel);
    });
  }

  final SupervisorBasicInfoUseCase basicInfoUseCase;

  supervisorBasicInfo(SupervisorBasicInfoModel supervisorBasicInfoModel) async {
    emit(const SupervisorBasicInfoState.loading());
    final result = await basicInfoUseCase(supervisorBasicInfoModel);
    result.fold((failure) {
      emit(SupervisorBasicInfoState.basicInfoError(failure));
    }, (supervisorBasicInfoEntity) {
      emit(SupervisorBasicInfoState.basicInfoSuccess(supervisorBasicInfoEntity));
    });
  }




  void updateSelectedHelpers(int index, num id, Map<String, int> selectedHelpers) {
    // Check if the element exists
    if (selectedHelpers.containsValue(id)) {
      // Find the key to be removed
      String keyToRemove = selectedHelpers.keys.firstWhere((key) => selectedHelpers[key] == id);

      // Remove the element
      selectedHelpers.remove(keyToRemove);

      // Adjust the keys
      Map<String, int> updatedHelpers = {};
      selectedHelpers.forEach((key, value) {
        int intKey = int.parse(key);
        updatedHelpers[intKey > int.parse(keyToRemove) ? '${intKey - 1}' : '$intKey'] = value;
      });

      selectedHelpers
        ..clear()
        ..addAll(updatedHelpers);

    } else {
      // Add the new element
      selectedHelpers['$index'] = id.toInt();
    }
  }

  int mosqueIndex = 1;
  List<BehaviorSubject<String>> mosqueCtrl = [];



  increaseMosqueCtrl() {
    if (mosqueIndex >= mosqueCtrl.length) {
      mosqueCtrl.add(BehaviorSubject<String>());
    }
  }

  increaseMosqueIndex() {
    if (mosqueIndex <= 4) {
      mosqueIndex++;
      emit(SupervisorBasicInfoState.indexIncreased(mosqueIndex));
    } else {
      mosqueIndex;
      emit(SupervisorBasicInfoState.indexMaintained(mosqueIndex));
    }
  }

  decreaseMosqueIndex() {
    if (mosqueIndex <= 4) {
      mosqueIndex--;
      emit(SupervisorBasicInfoState.indexDecreased(mosqueIndex));
    } else if (mosqueIndex <= 1) {
      mosqueIndex;
      emit(SupervisorBasicInfoState.indexMaintained(mosqueIndex));
    }
  }

  int burialIndex = 1;
  List<BehaviorSubject<String>> burialCtrl = [];

  increaseBurialCtrl() {
    if (burialIndex >= burialCtrl.length) {
      burialCtrl.add(BehaviorSubject<String>());
    }
  }

  increaseBurialIndex() {
    if (burialIndex <= 4) {
      burialIndex++;
      emit(SupervisorBasicInfoState.indexIncreased(burialIndex));
    } else {
      burialIndex;
      emit(SupervisorBasicInfoState.indexMaintained(burialIndex));
    }
  }

  decreaseBurialIndex() {
    if (burialIndex <= 4) {
      burialIndex--;
      emit(SupervisorBasicInfoState.indexDecreased(burialIndex));
    } else if (burialIndex <= 1) {
      burialIndex;
      emit(SupervisorBasicInfoState.indexMaintained(burialIndex));
    }
  }

  disposeCtrl() {
    for (var subject in mosqueCtrl) {
      subject.close();
    }
    for (var subject in burialCtrl) {
      subject.close();
    }
  }

  final cityCtrl = BehaviorSubject<String>();

  Stream<String> get cityStream => cityCtrl.stream;

  void updateCity(String city) {
    cityCtrl.sink.add(city);
  }

  Map mosques = {};
  updateMosques() {for (int i = 0;
  i <= mosqueIndex - 1;
  i++) {
    mosques.addAll({
      "$i": {
        "name": mosqueCtrl[i].hasValue
            ? mosqueCtrl[i].value
            : "Name $i",
        "city": cityCtrl.value,
        "location": {
          "latitude":
          AppConstants.mosqueLatLng[i].latitude,
          "longitude":
          AppConstants.mosqueLatLng[i].longitude,
        },
      },
    });
  }

  }

  Map burials = {};
 updateBurials() {
   for (int i = 0;
   i <= burialIndex - 1;
   i++) {
     burials.addAll({
       "$i": {
         "name": burialCtrl[i].hasValue
             ? burialCtrl[i].value
             : "Name $i",
         "city": cityCtrl.value,
         "location": {
           "latitude":
           AppConstants.burialLatLng[i].latitude,
           "longitude":
           AppConstants.burialLatLng[i].longitude,
         },
       },
     });
   }
 }

  Map phones = {};

  updateHelpersPhones(helpers) {
    for (int i = 0;
    i <= helpers.length;
    i++) {
      var index = helpers.values;
      phones.addAll({
        "$i": {
          "phone": helpers[index.elementAt(i)].phone
        },
      });
    }
  }

}
