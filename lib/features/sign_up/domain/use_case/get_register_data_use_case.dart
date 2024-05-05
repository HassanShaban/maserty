import 'package:dartz/dartz.dart';
import 'package:maserty/core/failure.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/features/sign_up/domain/repo/registration_repo.dart';

class GetRegisterDataUseCase {
  late RegistrationRepo registrationRepo;

  GetRegisterDataUseCase(this.registrationRepo);

  Future<Either<Failure, Registration>> call() async {
    return await registrationRepo.getRegisterData();
  }
}
