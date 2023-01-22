import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'package:food/models/shoping_model.dart';
part 'shopping_list_state.dart';

class ShoppingListCubit extends Cubit<ShoppingListState> {
  String? id;
  ShoppingListCubit()
      : super(
          const ShoppingListState(
            documents: [],
            errorMessage: '',
            isLoading: false,
          ),
        );



  StreamSubscription? _streamSubscription;

  Future<void> deletedocuments(String id) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('Nie jesteś zalogowany');
    }
    FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('categories')
        .doc(id)
        .delete();
  }

  Future<void> getdocuments(String text) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('Nie jesteś zalogowany');
    }
    FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('categories')
        .add({'title': text});
  }

  Future<void> start() async {
    emit(
      const ShoppingListState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('Nie jesteś zalogowany');
    }
    _streamSubscription = FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('categories')
        .snapshots()
        .listen((items) {
      final shopingModels = items.docs.map((doc) {
        return ShopingModel(
          id: doc.id,
          title: doc['title'],
        );
      }).toList();

      emit(
        ShoppingListState(
          documents: shopingModels,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          ShoppingListState(
            documents: const [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
