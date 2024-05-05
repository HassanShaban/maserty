import 'package:dartz/dartz.dart';
import 'package:maserty/core/failure.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';

abstract class RegistrationRepo{

  Future<Either<Failure, Registration>> getRegisterData();

}