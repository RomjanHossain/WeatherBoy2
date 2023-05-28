import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherboy2/cubits/header/model/header_model.dart';

part 'header_state.dart';

class HeaderCubit extends Cubit<HeaderState> {
  HeaderCubit() : super(HeaderInitial());

  void updateHeader(HeaderModel headerModel) {
    emit(HeaderLoadState(headerModel: headerModel));
  }
}
