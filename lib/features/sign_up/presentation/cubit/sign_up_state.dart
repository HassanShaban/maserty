abstract class SignUpState {}

class SignUpInitialState extends SignUpState {}

class GetAllSignUpDataState extends SignUpInitialState{}

class GetAllSignUpDataFailedState extends SignUpInitialState{}

class GetAllSignUpDataSuccessState extends SignUpInitialState{}


class FileUploadInitial extends SignUpInitialState {}

class FileUploadLoading extends SignUpInitialState {}

class FileUploadSuccess extends SignUpInitialState {}

class FileUploadFailure extends SignUpInitialState {
  final String FailreError;

  FileUploadFailure(this.FailreError);
}
