import 'package:bloc/bloc.dart';

class UnitConversionCubit extends Cubit<bool> {
  UnitConversionCubit() : super(true);

  void toggle() => emit(!state);
}
