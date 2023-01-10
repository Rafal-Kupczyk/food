import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food/models/item_model.dart';


class ItemsRepository {
  Stream<List<ItemModel>> getItemsStream() {
    return FirebaseFirestore.instance
        .collection('reustarants')
        .orderBy('rating', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return ItemModel(
            id: doc.id,
            reustarantName: doc['name'],
            adresName: doc['adres'],
            rating: doc['rating'].toString(),
          );
        },
      ).toList();
    });
  }

  

  Future<void> add({
    required String reustarantName,
    required String adresName,
    required String rating,
  }) {
    return FirebaseFirestore.instance.collection('reustarants').add(
      {
        'name': reustarantName,
        'adres': adresName,
        'rating': rating,
      },
    );
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance
        .collection('reustarants')
        .doc(id)
        .delete();
  }
}
