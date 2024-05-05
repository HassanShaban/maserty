import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maserty/features/sign_up/domain/use_case/get_register_data_use_case.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(
    this.getRegisterDataUseCase,
  ) : super(SignUpInitialState());

  late GetRegisterDataUseCase getRegisterDataUseCase;

  static SignUpCubit get(context) => BlocProvider.of(context);

  Future<void> getAllRegisterData() async {
    // Fluttertoast.showToast(msg: 'start');
    final result = await getRegisterDataUseCase();
    result.fold((failure) {
      Fluttertoast.showToast(msg: 'Failed');
    }, (signUp) {
      Fluttertoast.showToast(msg: 'Success');
    });
  }
}
