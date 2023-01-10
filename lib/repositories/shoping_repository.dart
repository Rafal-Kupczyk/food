import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food/models/shoping_model.dart';

class ShopingRepository {
  Stream<List<ShopingModel>> getsItemsStream() {
    return FirebaseFirestore.instance
        .collection('categories')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return ShopingModel(
            id: doc.id,
            title: doc['title'],
          );
        },
      ).toList();
    });
  }
}
