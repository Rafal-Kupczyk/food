import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shopping_list_state.dart';

class ShoppingListCubit extends Cubit<ShoppingListState> {
  ShoppingListCubit() : super(ShoppingListState());
}
