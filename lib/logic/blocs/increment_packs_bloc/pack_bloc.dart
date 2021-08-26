import 'package:drohealth/constants/pack_number_action.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackBloc extends Bloc<PackNumberAction, int> {
  PackBloc() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  Stream<int> mapEventToState(PackNumberAction event) async* {
    // TODO: implement mapEventToState
    if (event == PackNumberAction.Add) {
      yield state + 1;
    } else if (event == PackNumberAction.Remove) {
      if (state == 0) {
        yield state;
      } else {
        yield state - 1;
      }
    }
  }
}
