import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/features/sign_up/domain/use_case/get_register_data_use_case.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(
    this.getRegisterDataUseCase,
  ) : super(SignUpInitialState());

  late GetRegisterDataUseCase getRegisterDataUseCase;

  static SignUpCubit get(context) => BlocProvider.of(context);

  bool isGettingAllSignUpData = false;

  late Registration AllDataSignUp;

  Future<void> getAllRegisterData() async {
    isGettingAllSignUpData = true;
    emit(GetAllSignUpDataState());
    final result = await getRegisterDataUseCase();
    result.fold((failure) {
      isGettingAllSignUpData = false;
      emit(GetAllSignUpDataFailedState());
      Fluttertoast.showToast(msg: 'Failed');
    }, (signUp) {
      isGettingAllSignUpData = false;
      AllDataSignUp = signUp;
      emit(GetAllSignUpDataSuccessState());
      Fluttertoast.showToast(msg: 'Success');
    });
  }
}
