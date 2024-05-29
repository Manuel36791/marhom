import 'user_data_model.dart';

class UserDataUtils {
  // A static instance of UserData
  static UserData? _instance;

  // Getter to access the static instance
  static UserData? get instance => _instance;

  // Method to deserialize from JSON and store the result in the static instance
  static void fromJson(Map<String, dynamic> json) {
    _instance = UserData.fromJson(json);
  }

  // Method to serialize the static instance to JSON
  static Map<String, dynamic>? toJson() {
    return _instance?.toJson();
  }

  // Method to manually set the static instance
  static void setInstance(UserData instance) {
    _instance = instance;
  }
}
