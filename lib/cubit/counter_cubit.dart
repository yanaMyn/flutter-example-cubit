import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print("SimpleBlocObserver");
    print('${bloc.runtimeType} $change');
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState): super(initialState);

  void increment() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print("change");
    print(change);
  }
}