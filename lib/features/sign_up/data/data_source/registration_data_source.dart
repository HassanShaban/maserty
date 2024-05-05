import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/rest/dio_helper.dart';

class RegisterDataSource {
  Future<Registration> getRegisterDataSource() async {
    final result =
    await DioHelper.getData(url: '/api/Registration/Lookups',
        );
    return Registration.fromJson(result.data);
  }
}
