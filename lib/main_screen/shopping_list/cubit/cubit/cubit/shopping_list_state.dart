part of 'shopping_list_cubit.dart';

@immutable
class ShoppingListState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;

    final bool isLoading;
  final String errorMessage;

  const ShoppingListState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
