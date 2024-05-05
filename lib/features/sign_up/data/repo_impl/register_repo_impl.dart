import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:maserty/core/failure.dart';
import 'package:maserty/features/sign_up/data/data_source/registration_data_source.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/features/sign_up/domain/repo/registration_repo.dart';

class RegisterRepoImpl implements RegistrationRepo {
  RegisterRepoImpl(this.registerDataSource);

  late RegisterDataSource registerDataSource;

  @override
  Future<Either<Failure, Registration>> getRegisterData() async {
    try {
      return Right(await registerDataSource.getRegisterDataSource());
    } on DioException catch (e) {
      print(e.toString());
      return Left(Failure(e.toString()));
    }
  }
}
