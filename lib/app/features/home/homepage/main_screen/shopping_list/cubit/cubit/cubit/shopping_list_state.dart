part of 'shopping_list_cubit.dart';


class ShoppingListState {
  final List<ShopingModel> documents;

  final bool isLoading;
  final String errorMessage;

  const ShoppingListState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
